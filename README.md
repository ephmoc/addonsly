<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

[![example workflow](https://github.com/ephmoc/addonsly/actions/workflows/dart.yml/badge.svg)]()

# Addonsly

A package of useful Dart and Flutter addons

## Features

The package includes the following features:

- widgets
- class extensions (for ```Object```, ```String```, ```List``` etc.)
- UI constants

### Widgets

Horizontal nad vertical spacers for UI content layout that extends ```SizedBox``` widget.

### Extensions

```List<Widget>``` extensions like ```joinWithSeparator()``` method that allows to add spacers or
other widgets between widgets from a list.

```String``` extensions like:

- ```nullify``` getter which return ```null``` if the string is empty
- ```capitalized``` or ```firstCapitalLetter``` getters for some basic string operations.

```Object``` extensions like ```unwrappedString``` getter that returns a ```String``` representation
of an ```Object``` or ```-``` if it is ```null``` or an empty ```String```

### Constants

```Paddings``` set of ```double``` values useful for UI dimensions fine tuning.
