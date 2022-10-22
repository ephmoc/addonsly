import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';

/// A collection of useful extensions on [String]
extension StringExtension on String {
  /// A getter that converts the first letter of a [String] into uppercase
  /// and the remaining letters of the [String] into lowercase
  /// if the [String] is not empty.
  ///
  /// Example:
  /// ```dart
  /// 'john Doe'.capitalized; // John doe
  /// ```
  String get capitalized => isNotEmpty
      ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}'
      : this;

  /// Returns a first letter of a [String] converted to uppercase
  /// or null if the [String] is empty
  String? get firstCapitalLetter => characters.firstOrNull?.toUpperCase();
}

extension NullIfEmpty on String? {
  /// Returns null if a [String] is empty
  String? get nullify {
    if (this?.isEmpty ?? true) {
      return null;
    } else {
      return this;
    }
  }
}
