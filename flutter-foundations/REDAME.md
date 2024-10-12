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
Then they stay centered and with same width and don;t grow anymore.

- `ResponsiveScrollableCard` in `common_widgets\responsive_scrollable_card.dart`

Card that becomes scrollable when vertical space is not enough.

- `ResponsiveTwoColumnLayout` in `common_widgets\responsive_two_column_layout.dart`

Two column layout that after a break point become vertical single column layout.

Useful content for **localization**:

- [Internationalizing Flutter apps | Flutter.dev](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)
- [Simplified Flutter Localization using a BuildContext extension](https://codewithandrea.com/articles/flutter-localization-build-context-extension/)
- [How to Read Localized Strings Outside the Widgets using Riverpod](https://codewithandrea.com/articles/app-localizations-outside-widgets-riverpod/)
