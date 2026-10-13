import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:isar_plus/isar_plus.dart';
import 'package:path_provider/path_provider.dart';

import 'package:fun_with_kanji/models/fun_with_kanji.dart';
import 'package:fun_with_kanji/widgets/fun_with_kanji_app.dart';

void main() async {
  log('Welcome to Fun With Kanji <3');
  WidgetsFlutterBinding.ensureInitialized();
  // On web, load isar_plus.wasm/.js from web/ instead of unpkg.com.
  // Both files must match the isar_plus version in pubspec.lock.
  await Isar.initialize(kIsWeb ? 'isar_plus.wasm' : null);
  final directory = kIsWeb
      ? null
      : Platform.isLinux
          ? await getApplicationSupportDirectory()
          : await getApplicationDocumentsDirectory();
  final isar = Isar.open(
    schemas: FunWithKanji.isarSchemas,
    directory: directory?.path ?? './',
    engine: kIsWeb ? IsarEngine.sqlite : IsarEngine.isar,
  );

  runApp(FunWithKanjiApp(isar: isar));
}
