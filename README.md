# Flutter Training

Flutter training project that has the main concepts of an application:
 - Bloc architecture
 - List/Details views
 - Network Apis
 - Flavors
 - Localization
 - Text styling

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Flutter Training works on iOS, Android, Web, and Windows._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Resources
- https://docs.flutter.dev/get-started/codelab
- https://www.youtube.com/watch?v=THCkkQ-V1-8&t=11s
- https://bloclibrary.dev/#/fluttertodostutorial
- https://docs.flutter.dev/development/data-and-backend/json
- https://docs.flutter.dev/cookbook/design/fonts

---
## Change App Icons
you can change it manually [check this](https://github.com/VeryGoodOpenSource/very_good_cli/blob/main/doc/very_good_core.md#updating-app-icons-).

---
## Useful Plugins Used
- [Very good cli](https://pub.dev/packages/very_good_cli) for initializing the app with flavors and localization
- [Advanced json to dart](https://plugins.jetbrains.com/plugin/16236-advancedjson2dart) for generating models from json
- [Dart data class](https://plugins.jetbrains.com/plugin/12129-bloc) for generating copyWith function
- [Bloc](https://plugins.jetbrains.com/plugin/12429-dart-data-class) generating bloc classes(Bloc, State, Event)
- [Assets generator](https://plugins.jetbrains.com/plugin/15427-flutterassetsgenerator)
- [Assets autocompletion](https://plugins.jetbrains.com/plugin/index?xmlId=com.ixigua.flutter_asset_iteral)