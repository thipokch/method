import 'dart:io';

import 'package:mason/mason.dart';
import '../../feature_test/feature_test_bundle.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;
  final directory = Directory.current.path;

  List<String> folders;
  if (Platform.isWindows) {
    folders = directory.split(r'\').toList();
  } else {
    folders = directory.split('/').toList();
  }
  final libIndex = folders.indexWhere((folder) => folder == 'lib');

  final progress = logger.progress('Creating your tests!');

  final featureTestGen =
      await MasonGenerator.fromBundle(featureTestBundle);
  await featureTestGen.generate(
    DirectoryGeneratorTarget(
      Directory(('${folders.sublist(0, libIndex).join('/')}/test')),
    ),
    logger: logger,
    vars: context.vars,
  );

  progress.complete(green.wrap('Tests created!') as String);
}
