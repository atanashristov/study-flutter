# flutter-foundations

Notes and code from [Flutter Foundations course](https://pro.codewithandrea.com/flutter-foundations).

Contains the following folders:

- [E-commerce app from Complete Flutter Course](./ecommerce_app)

## Complete Flutter Course

The link to te original code is [Original Code on GitHub](https://github.com/bizz84/complete-flutter-course).

The link to the additional info and FAQs to the course is [Flutter Foundations Course - Documentation](https://docs.page/bizz84/complete-flutter-course).

## Tools and practices

Use [cloc](https://github.com/AlDanial/cloc?tab=readme-ov-file#install-via-package-manager) to count lines of code in code:

```sh
choco install cloc
cd lib
cloc --by-file .

------------------------------------------------------------------------------------------------------------------------
File                                                                                 blank        comment           code
------------------------------------------------------------------------------------------------------------------------
.\src\features\sign_in\email_password_sign_in_screen.dart                               14             20            147
.\src\features\address\address_screen.dart                                              14             17            132
.\src\constants\test_products.dart                                                       1              1            121
...
```

## Notes and takeaways

### Module 1: Intro

**Project structure:**

- ui
  - common_widgets: contains common/universal/reusable widgets to use across all the ui like buttons, etc.
  - constants: sizes, breakpoints, test data (before we have repositories and live data)
  - features: application features
    - shopping_card:
      - shopping_card_screen.dart
      - shopping_card_item.dart
      - shopping_card_items_builder.dart
  - localization: contains `.arb` files and l10n utilities
  - utils: utilities like date or currency formatting
- domain
  - model: contains domain models

Useful **widgets for responsive design**:

- `ResponsiveCenter` in `common_widgets\responsive_center.dart`

It's children are centered vertically and expand up to certain width as we resize the window.
Then they stay centered and with same width and don't grow anymore.

- `ResponsiveScrollableCard` in `common_widgets\responsive_scrollable_card.dart`

Card that becomes scrollable when vertical space is not enough.

- `ResponsiveTwoColumnLayout` in `common_widgets\responsive_two_column_layout.dart`

Two column layout that after a break point become vertical single column layout.

Useful content for **localization**:

- [Internationalizing Flutter apps | Flutter.dev](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)
- [Simplified Flutter Localization using a BuildContext extension](https://codewithandrea.com/articles/flutter-localization-build-context-extension/)
- [How to Read Localized Strings Outside the Widgets using Riverpod](https://codewithandrea.com/articles/app-localizations-outside-widgets-riverpod/)

### Module 2: Navigation with GoRouter

Using declarative routing with GoRouter to replace Navigator 1.0.

Topics:

- Install and configure GoRouter
- Work with routes and sub-routes
- Navigate using "go" and "push"
- GoRouterHelper extension
- Routing with parameters & error handling

Resources:

- [go_router](https://pub.dev/packages/go_router)
- [Add a drawer to a screen](https://docs.flutter.dev/cookbook/design/drawer)
- [Navigation: Deep linking](https://docs.flutter.dev/ui/navigation/deep-linking)
- [Navigation: Set up app links for Android](https://docs.flutter.dev/cookbook/navigation/set-up-app-links)
- [Navigation: Set up universal links for iOS](https://docs.flutter.dev/cookbook/navigation/set-up-universal-links)
- [Navigation: Validate deep links](https://docs.flutter.dev/tools/devtools/deep-links)
- [Navigation: Url strategies](https://docs.flutter.dev/ui/navigation/url-strategies)

Installation and wire up:

We use the `MaterialApp.router` Navigator 2.0 API (GoRouter is based on Navigator 2):

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // * The home page of the app
      home: const ProductsListScreen(),
      ...
```

The `home` parameter is no longer defined. This is because the entire routing logic moves under `routerConfig` argument.

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final goRouter = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const ProductsListScreen(),
        ),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      routerConfig: goRouter,
```

We can add initial location (default is "/"), and we can enable debugging

For the web we configure the url path strategy without a hash-tag (default), so that it becomes for example:

- from: flutterexample.dev/#/path/to/screen
- to: flutterexample.dev/path/to/screen

To do this in the `main.app` we import and add call to `usePathUrlStrategy()`:

```dart
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
...
```

From this point we can migrate one by one the Navigator 1 routes to GoRouter, we keep adding one at a time in the list above and changing the code where we programmatically instantiate the UI screen classes.

For example for the shopping cart we change this:

```dart
onPressed: () => Navigator.of(context).push(
  MaterialPageRoute(
    fullscreenDialog: true,
    // The fullscreenDialog property specifies whether the incoming route
    // is a fullscreen modal dialog. On iOS, those routes
    // animate from the bottom to the top rather than horizontally.
    builder: (_) => const ShoppingCartScreen(),
  ),
),
```

to use either `go` or `goNamed`:

```dart
onPressed: () => GoRouter.of(context).go('/cart'),
```

We can use GoRoute extension methods on `context` such as `go`, `goNamed`, `push`, `pushNamed`, `canPop`, `pop`, `pushReplacement`, `pushReplacementNamed`, `replace` and `replaceNamed`.

```dart
onPressed: () => context.go('/cart'),
```
