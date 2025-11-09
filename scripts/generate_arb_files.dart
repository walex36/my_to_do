import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final currentDir = Directory.current.path;

  final Map<String, dynamic> globalPtArbMap = <String, dynamic>{};
  final Map<String, dynamic> globalEnArbMap = <String, dynamic>{};

  // Função auxiliar para ler arb de um diretório
  void processArbFiles(String basePath) {
    final l10nDir = Directory('$basePath/lib/l10n');
    if (!l10nDir.existsSync()) return;

    final ptArb = File('${l10nDir.path}/app_pt.arb');
    final enArb = File('${l10nDir.path}/app_en.arb');

    if (ptArb.existsSync() && enArb.existsSync()) {
      final ptArbJson = json.decode(ptArb.readAsStringSync()) as Map<String, dynamic>;
      final enArbJson = json.decode(enArb.readAsStringSync()) as Map<String, dynamic>;

      globalPtArbMap.addAll(ptArbJson);
      globalEnArbMap.addAll(enArbJson);
    }
  }

  // Processa modules
  final modulesDir = Directory('$currentDir/modules');
  if (modulesDir.existsSync()) {
    for (final entity in modulesDir.listSync()) {
      if (entity is Directory) {
        processArbFiles(entity.path);
      }
    }
  }

  // Processa commons
  final commonsDir = Directory('$currentDir/commons');
  if (commonsDir.existsSync()) {
    for (final entity in commonsDir.listSync()) {
      if (entity is Directory) {
        processArbFiles(entity.path);
      }
    }
  }

  // Processa packages
  final packagesDir = Directory('$currentDir/packages');
  if (packagesDir.existsSync()) {
    for (final entity in packagesDir.listSync()) {
      if (entity is Directory && entity.path.split(Platform.pathSeparator).last != 'lib_dependencies') {
        processArbFiles(entity.path);
      }
    }
  }

  // Salva arquivos finais no lib_dependencies
  final outputL10nDir = Directory('$currentDir/packages/lib_dependencies/lib/l10n');
  if (!outputL10nDir.existsSync()) {
    outputL10nDir.createSync(recursive: true);
  }

  File('${outputL10nDir.path}/app_pt.arb').writeAsStringSync(json.encode(globalPtArbMap));
  File('${outputL10nDir.path}/app_en.arb').writeAsStringSync(json.encode(globalEnArbMap));

  // Executa o flutter gen-l10n
  final result = await Process.run(
    'flutter',
    ['gen-l10n'],
    workingDirectory: '$currentDir/packages/lib_dependencies',
    runInShell: true,
  );

  if (result.exitCode == 0) {
    print('✅ Arquivos gerados e flutter gen-l10n executado com sucesso!');
  } else {
    print('❌ Erro ao executar flutter gen-l10n:');
    print(result.stderr);
  }
}
