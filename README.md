# Flutter Template

A comprehensive Flutter mobile template with Riverpod, clean architecture, ShadCN UI, and more.

## Features

- **Clean Architecture**: Well-organized project structure with separation of concerns
- **State Management**: Using Riverpod for robust and testable state management
- **UI Components**: ShadCN UI for beautiful and consistent design
- **Theming**: Light and dark mode support with custom colors and text styles
- **Localization**: Multi-language support (English and Vietnamese included)
- **Routing**: Navigation managed with GoRouter
- **Environment Configuration**: Support for development and production environments
- **Asset Management**: Generated code for type-safe access to assets, colors, and more

## Project Structure

```
lib/
├── config/                 # App configuration
│   ├── environment/        # Environment settings
│   ├── localization/       # Localization setup
│   ├── router/             # Routing configuration
│   └── theme/              # Theme configuration
├── core/                   # Core functionality
│   ├── services/           # Common services
│   └── storage/            # Local storage
├── data/                   # Data layer (repositories, data sources)
├── domain/                 # Domain layer (entities, use cases)
├── generated/              # Generated code (assets, colors)
└── presentation/           # UI layer
    ├── home/               # Home screen and related components
    ├── onboarding/         # Onboarding screens
    ├── settings/           # Settings screen
    └── splash/             # Splash screen
```

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / Xcode for deployment

### Installation

1. Clone the repository
2. Install dependencies:
   ```
   flutter pub get
   ```
3. Generate assets:
   ```
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
4. Run the app:
   ```
   flutter run
   ```

### Running in Different Environments

For development:
```
flutter run --flavor dev -t lib/main.dart
```

For production:
```
flutter run --flavor prod -t lib/main_prod.dart
```

## Customization

### Theming

Customize your app's theme in `lib/config/theme/app_theme.dart`.

### Adding Languages

1. Add new translation files in `assets/translations/`
2. Update supported locales in `lib/config/localization/app_localization.dart`

### Adding New Screens

1. Create a new screen file in the appropriate directory under `lib/presentation/`
2. Add the route in `lib/config/router/app_router.dart`

## Built With

- [Flutter](https://flutter.dev/)
- [Riverpod](https://riverpod.dev/) - State management
- [GoRouter](https://pub.dev/packages/go_router) - Navigation
- [easy_localization](https://pub.dev/packages/easy_localization) - Localization
- [ShadCN UI](https://pub.dev/packages/shadcn_ui) - UI components
- [flutter_gen](https://pub.dev/packages/flutter_gen) - Asset generation

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Code Generation

### Localization

This project uses Easy Localization with type-safe translation keys. To generate the keys from translation files, run:

```bash
# Generate type-safe keys
flutter pub run easy_localization:generate -f keys -S assets/translations -O lib/generated -o locale_keys.g.dart

# Generate localization loader (optional)
flutter pub run easy_localization:generate -f json -S assets/translations -O lib/generated -o codegen_loader.g.dart
```

Usage in code:

```dart
// Import the generated keys
import 'package:your_app/generated/locale_keys.g.dart';

// Basic usage
Text(LocaleKeys.home_title.tr())

// With positional arguments
Text(LocaleKeys.greeting.tr(args: ['John']))

// With named arguments
Text(LocaleKeys.welcome.tr(namedArgs: {'name': 'John'}))

// Pluralization
Text(LocaleKeys.items.tr(args: [itemCount.toString()]))

// Gender-specific translations
Text(LocaleKeys.pronoun.tr(gender: isMale ? 'male' : 'female'))
```

Or use our handy script to run both generation steps:

```bash
./scripts/generate_keys.sh
```

### Assets

This project uses flutter_gen for type-safe asset access. To generate asset references, run:

```bash
flutter pub run build_runner build
```
