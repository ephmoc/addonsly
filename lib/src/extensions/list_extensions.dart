extension Enumerated<T> on List<T> {
  /// Returns a [List] of [MapEntry] objects where the [key] is an index,
  /// and [value] is an original list object
  List<MapEntry<int, T>> get enumerated => asMap().entries.toList();
}

extension Copy<T> on List<T> {
  /// Returns a copy of a [List]
  List<T> get copy => <T>[...this];
}
