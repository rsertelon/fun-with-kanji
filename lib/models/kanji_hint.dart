import 'package:isar_plus/isar_plus.dart';

import 'package:fun_with_kanji/utils/writing_system.dart';

part 'kanji_hint.g.dart';

@Collection()
class KanjiHint {
  int id = 0;

  String writingSystem = WritingSystem.hiragana.name;
  int characterId = 0;
  String hint = '';
}
