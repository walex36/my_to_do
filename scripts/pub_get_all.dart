import 'dart:io';

Future<void> main() async {
  print('🔹 Running "flutter pub get" in all packages, modules and commons...\n');

  final root = Directory.current.path;
  final packagesDir = Directory('$root/packages');
  final modulesDir = Directory('$root/modules');
  final commonsDir = Directory('$root/commons');

  await _pubGetInDir(packagesDir);
  await _pubGetInDir(modulesDir);
  await _pubGetInDir(commonsDir);

  print('\n📦 Running flutter pub get in root project...');
  await _runCommand('flutter', ['pub', 'get'], workingDirectory: root);

  print('\n✅ All flutter pub get commands completed successfully!');
}

Future<void> _pubGetInDir(Directory dir) async {
  if (!dir.existsSync()) return;

  final subdirs = dir.listSync().whereType<Directory>().where((d) => !d.path.contains('.')).toList();

  for (final subdir in subdirs) {
    final name = subdir.path.split(Platform.pathSeparator).last;
    print('\n📦 Getting dependencies for $name...');
    await _runCommand('flutter', ['pub', 'get'], workingDirectory: subdir.path);
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
