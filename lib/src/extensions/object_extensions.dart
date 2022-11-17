/// A collection of useful extensions on [Object?]
extension AddonslyNullableObject on Object? {
  /// Returns a [String] representation of an [Object] or '-' if it is **null**
  /// or an empty [String]
  String get unwrappedString {
    if (this is String?) {
      return (this as String?)?.isEmpty ?? true ? '-' : toString();
    } else {
      return this?.toString() ?? '-';
    }
  }
}
