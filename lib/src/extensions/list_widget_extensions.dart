import 'package:flutter/widgets.dart';

/// A collection of useful extensions on [List<Widget>]
extension JoinedWidgets on List<Widget> {
  /// Adds a specified separator [Widget] between Widgets in a list.
  /// This can be useful to add some spacer or other kind of divider between
  /// Widgets without the need of writing it multiple times and cluttering the
  /// code.
  ///
  /// Example:
  /// Instead of writing this:
  /// ```dart
  /// [
  ///  const Text('AAA'),
  ///  const Divider(),
  ///  const Text('BBB'),
  ///  const Divider(),
  ///  const Text('CCC'),
  /// ]
  /// ```
  ///
  /// you can write:
  ///
  /// ```dart
  /// [
  ///  const Text('AAA'),
  ///  const Text('BBB'),
  ///  const Text('CCC'),
  /// ].joinWithSeparator(const Divider());
  /// ```
  List<Widget> joinWithSeparator(Widget separator) {
    return length > 1
        ? (take(length - 1)
            .map((widget) => [widget, separator])
            .expand((widget) => widget)
            .toList()
          ..add(last))
        : this;
  }
}
