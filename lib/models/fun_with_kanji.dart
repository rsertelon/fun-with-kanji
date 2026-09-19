import 'package:flutter/material.dart';

import 'package:isar_plus/isar_plus.dart';
import 'package:provider/provider.dart';

import 'package:fun_with_kanji/models/kanji_hint.dart';
import 'package:fun_with_kanji/models/learning_progress.dart';
import 'package:fun_with_kanji/utils/writing_system.dart';

class FunWithKanji {
  final Isar isar;

  FunWithKanji(this.isar);

  static const int maxStars = 10;
  static const int hiraganaMax = 105 * maxStars;
  static const int katakanaMax = 105 * maxStars;
  static const int radicalsMax = 229 * maxStars;
  static const int kanjiMax = 267 * maxStars;

  static List<IsarGeneratedSchema> get isarSchemas => [
        LearningProgressSchema,
        KanjiHintSchema,
      ];

  Stream<void> get onChanges => isar.learningProgress.watchLazy();

  Widget builder(BuildContext context, Widget? child) => Provider<FunWithKanji>(
        create: (_) => this,
        child: child,
      );

  static FunWithKanji of(BuildContext context) => Provider.of<FunWithKanji>(
        context,
        listen: false,
      );

  Future<int> loadProgressPercent(WritingSystem system) async =>
      (((isar.learningProgress
                      .where()
                      .writingSystemEqualTo(system.name)
                      .starsProperty()
                      .sum()) /
                  10) /
              system.entries *
              100)
          .round();

  Future<LearningProgress> getLearningProgress(
          WritingSystem system, int id) async =>
      (isar.learningProgress
              .where()
              .writingSystemEqualTo(system.name)
              .and()
              .characterIdEqualTo(id)
              .findFirst()) ??
          LearningProgress()
        ..characterId = id
        ..writingSystem = system.name;

  Future<int> getFinishedCount(WritingSystem system) async => isar
      .learningProgress
      .where()
      .writingSystemEqualTo(system.name)
      .and()
      .starsEqualTo(10)
      .count();

  Future<Set<LearningProgress>> getChoices(
    WritingSystem system,
    int stars,
    int characterId, {
    int choicesCount = 2,
  }) async {
    var available = isar.learningProgress
        .where()
        .writingSystemEqualTo(system.name)
        .and()
        .not()
        .characterIdEqualTo(characterId)
        .findAll();
    available.shuffle();
    return available.take(choicesCount).toSet();
  }

  Future<List<LearningProgress>> getLearnInProgressCharacters(
    WritingSystem system,
  ) async =>
      isar.learningProgress
          .where()
          .writingSystemEqualTo(system.name)
          .and()
          .starsLessThan(10)
          .findAll();

  Future<int> getNextLearnCharacter(WritingSystem system) async {
    final nextId = (isar.learningProgress
            .where()
            .writingSystemEqualTo(system.name)
            .sortByCharacterIdDesc()
            .findFirst())
        ?.characterId;
    if (nextId == null) return 0;
    return nextId + 1;
  }

  Future<List<LearningProgress>> getLearnedCharacters(
    WritingSystem system,
  ) async =>
      isar.learningProgress
          .where()
          .writingSystemEqualTo(system.name)
          .and()
          .starsEqualTo(10)
          .findAll();

  Future<void> setLearningProgress(
    WritingSystem system,
    int id,
    int stars,
  ) async =>
      isar.write((isar) {
        final progress = isar.learningProgress
                .where()
                .writingSystemEqualTo(system.name)
                .and()
                .characterIdEqualTo(id)
                .findFirst() ??
            (LearningProgress()
              ..id = isar.learningProgress.autoIncrement()
              ..characterId = id
              ..writingSystem = system.name);
        progress.stars = stars;
        progress.lastCheckedAt = DateTime.now();
        isar.learningProgress.put(progress);
      });

  Future<void> resetLearningProgress() async => isar.write((isar) => isar.clear());

  Future<void> resetLearningProgressForSystem(WritingSystem system) async =>
      isar.write(
        (isar) => isar.learningProgress
            .where()
            .writingSystemEqualTo(system.name)
            .deleteAll(),
      );

  Future<String?> loadHint(WritingSystem system, int id) async => isar
      .kanjiHints
      .where()
      .writingSystemEqualTo(system.name)
      .and()
      .characterIdEqualTo(id)
      .findFirst()
      ?.hint;

  Future<void> setHint(
    WritingSystem system,
    int id,
    String hintText,
  ) async =>
      isar.write((isar) {
        final hint = isar.kanjiHints
                .where()
                .writingSystemEqualTo(system.name)
                .and()
                .characterIdEqualTo(id)
                .findFirst() ??
            (KanjiHint()
              ..id = isar.kanjiHints.autoIncrement()
              ..characterId = id
              ..writingSystem = system.name);
        hint.hint = hintText;
        isar.kanjiHints.put(hint);
      });

  Future<Map<String, dynamic>> export() async => {
        'learningProgress':
            isar.learningProgress.where().starsGreaterThan(0).exportJson(),
        'hints': isar.kanjiHints.where().not().hintEqualTo('').exportJson(),
      };

  Future<void> import(Map<String, dynamic> json) async {
    isar.write((isar) {
      isar.learningProgress.importJson(
          List<Map<String, dynamic>>.from(json['learningProgress']));
    });
    isar.write((isar) {
      isar.kanjiHints
          .importJson(List<Map<String, dynamic>>.from(json['hints']));
    });
  }
}
