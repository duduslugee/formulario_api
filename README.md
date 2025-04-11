# Formulário com API em Flutter

Este é um aplicativo Flutter que permite cadastrar informações (nome, e-mail, telefone) em um formulário, enviá-las para uma API MockAPI e listar os dados salvos em cards.

## Funcionalidades
- Tela inicial com design moderno (fundo gradiente).
- Formulário com validação de campos (nome, e-mail, telefone).
- Envio de dados para o MockAPI via POST.
- Listagem de dados em cards, buscados via GET.
- Navegação fluida entre telas.

## Tecnologias
- Flutter
- Pacote `http`
- MockAPI

## Como Executar
1. Clone o repositório: `git clone https://github.com/seu-usuario/formulario_api.git`
2. Entre na pasta: `cd formulario_api`
3. Instale as dependências: `flutter pub get`
     Caso ocorra algum erro semelhante a "formulario_api requires SDK version ^3.7.2, version solving failed", use o comando: 'flutter upgrade' para instalar pacotes necessários
4. Configure a URL do MockAPI em `lib/services/api_service.dart`.
5. Execute: `flutter run`

## Estrutura
- `lib/screens/`: Telas do app (`home_screen.dart`, `form_screen.dart`, `list_screen.dart`).
- `lib/services/`: Lógica da API (`api_service.dart`).
- `pubspec.yaml`: Dependências (ex.: `http`).
