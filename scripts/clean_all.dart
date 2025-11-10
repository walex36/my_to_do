import 'dart:io';

Future<void> main() async {
  print('🔹 Running "flutter clean" in all packages and modules...\n');

  final root = Directory.current.path;
  final packagesDir = Directory('$root/packages');
  final modulesDir = Directory('$root/modules');

  await _cleanDir(packagesDir);
  await _cleanDir(modulesDir);

  // Limpa o projeto principal
  await _deleteLockFile(Directory(root));
  await _runCommand('flutter', ['clean'], workingDirectory: root);

  print('\n✅ All packages and modules cleaned successfully!');
}

Future<void> _cleanDir(Directory dir) async {
  if (!dir.existsSync()) return;

  final subdirs = dir.listSync().whereType<Directory>().where((d) => !d.path.contains('.')).toList();

  for (final subdir in subdirs) {
    final name = subdir.path.split(Platform.pathSeparator).last;
    print('\n📦 Cleaning $name...');
    await _deleteLockFile(subdir);
    await _runCommand('flutter', ['clean'], workingDirectory: subdir.path);
  }
}

Future<void> _deleteLockFile(Directory dir) async {
  final lockFile = File('${dir.path}${Platform.pathSeparator}pubspec.lock');
  if (await lockFile.exists()) {
    await lockFile.delete();
    print('🗑️ Deleted pubspec.lock in ${dir.path}');
  }
}

Future<void> _runCommand(String command, List<String> args, {required String workingDirectory}) async {
  final process = await Process.start(command, args, workingDirectory: workingDirectory, runInShell: true);

  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);

  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    print('⚠️ Command "$command ${args.join(' ')}" failed in $workingDirectory');
  }
}
