[![example workflow](https://github.com/ephmoc/addonsly/actions/workflows/dart.yml/badge.svg)]() [![pub package][pub_badge]][pub_link] ![License: MIT](https://img.shields.io/github/license/ephmoc/addonsly) [![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis) [![codecov](https://codecov.io/gh/ephmoc/addonsly/branch/main/graph/badge.svg?token=NYHZEAZE2C)](https://codecov.io/gh/ephmoc/addonsly)

# Addonsly

A package of useful Dart and Flutter addons

## Features

The package includes the following features:

- widgets
- class extensions (for `Object`, `String`, `List` etc.)
- UI constants

### Widgets

Horizontal nad vertical spacers for UI content layout that extends `SizedBox` widget.

### Extensions

`List<Widget>` extensions like `joinWithSeparator()` method that allows to add spacers or other
widgets between widgets from a list.

`String` extensions like:

- `nullify` getter which return `null` if the string is empty
- `capitalized` or `firstCapitalLetter` getters for some basic string operations.

`Object` extensions like `unwrappedString` getter that returns a `String` representation of
an `Object` or `-` if it is `null` or an empty `String`

### Constants

`Paddings` set of `double` values useful for UI dimensions fine tuning.


[pub_badge]: https://img.shields.io/pub/v/addonsly.svg?label=pub

[pub_link]: https://pub.dev/packages/addonsly

