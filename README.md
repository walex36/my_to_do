# My To-Do: Aplicação Modularizada com Flutter


Um gerenciador de tarefas (`To-Do List`) desenvolvido em Flutter, estruturado sob o paradigma de **Arquitetura Modular** (também conhecido como Multi-Package ou Monorepo Lógico).

Esta arquitetura visa a máxima escalabilidade, reusabilidade e manutenibilidade, separando as funcionalidades em pacotes Dart isolados.

-----

## 🚀 Arquitetura e Modularização

Diferente de projetos monolíticos, o `My To-Do` adota uma estrutura modularizada por `features` e `packages`. Cada módulo é uma unidade autônoma que encapsula sua própria pilha arquitetural (Domínio, Dados e Apresentação).

Essa divisão estratégica, geralmente orquestrada por um *framework* como o Flutter Modular, garante:

1.  **Independência:** O trabalho em uma funcionalidade não afeta outras.
2.  **Testabilidade:** O código é fracamente acoplado, facilitando testes unitários isolados.
3.  **Escalabilidade:** Migrações de tecnologia (e.g., mudança de *state management*) são confinadas ao módulo afetado.


---

## 💻 Setup Inicial e Configuração

### Pré-requisitos

Certifique-se de ter o Flutter SDK e as ferramentas nativas de *build* (Xcode para iOS, Android SDK para Android).

### Clonagem

```bash
git clone [https://github.com/walex36/my_to_do.git](https://github.com/walex36/my_to_do.git)
cd my_to_do
````

### 2\. Criação das Pastas de Plataforma (Android e iOS)

**Este é um passo obrigatório.** Se o repositório não inclui as pastas nativas (`android/` e `ios/`), você deve gerá-las.

Execute o comando `flutter create` no diretório raiz do projeto para adicionar o *boilerplate* de plataforma sem sobrescrever o código existente [4]:

```bash
flutter create --platforms=android,ios.
```

### 3\. Instalação de Dependências em Todos os Módulos

Em projetos modulares, o `flutter pub get` deve ser executado recursivamente. Use o script de automação para garantir que todas as dependências em todos os pacotes (`packages/` e `features/`) sejam instaladas corretamente.

```
dart run scripts/pub_get_all.dart; 
```

-----

## ⚙️ Workflow de Automação (Scripts Essenciais)

O diretório `scripts/` contém utilitários **essenciais** para o desenvolvimento em um ambiente *multi-package*.

| Script | Propósito | Comando |
|---|---|---|
| `pub_get_all.dart` | Instala recursivamente dependências (`flutter pub get`) em todos os módulos.[5, 6] | `dart run scripts/pub_get_all.dart` |
| `clean_all.dart` | Remove artefatos de *build* (`build/` e `.dart_tool/`) de todos os módulos.[7, 8] | `dart run scripts/clean_all.dart` |
| `generate_arb_files.dart` | Gera classes de código para internacionalização (`l10n`). | `dart run scripts/generate_arb_files.dart` |


-----

## ▶️ Execução e Testes

Para rodar o aplicativo, certifique-se de ter executado os passos 2 e 3 do Setup Inicial.

```bash
flutter run
```

Para executar os testes:

```bash
flutter test
```

*Para testes isolados em módulos, navegue até o diretório do módulo (e.g., `packages/todo_domain`) e execute `flutter test`.*

-----
