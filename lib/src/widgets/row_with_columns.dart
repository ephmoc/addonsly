import 'package:addonsly/addonsly.dart';
import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';

/// A [Row] that contains a given number of widgets separated by a spacer.
class RowWithColumns extends StatelessWidget {
  /// A [Row] that contains a given number of widgets separated by a spacer.
  /// `children` represents the list o widgets, `columnCount` is a number of
  /// columns in the row, `spacer` is an optional [Widget] the will be placed
  /// between each widget from the list (default: `HSpacer.semiNormal()`).
  const RowWithColumns({
    super.key,
    required this.children,
    required this.columnCount,
    this.spacer,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
  }) : assert(columnCount > 0, 'columnCount must be greater then 0');

  /// A [Row] that contains two widgets separated by a spacer.
  /// `leading` is a first widget, `trailing` is a second one,
  /// `spacer` is an optional [Widget] the will be placed
  /// between each widget from the list (default: `HSpacer.semiNormal()`).
  RowWithColumns.double({
    super.key,
    Widget? leading,
    Widget? tailing,
    this.spacer,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
  })  : children = [leading, tailing],
        columnCount = 2;

  /// A [Row] that contains three widgets separated by a spacer.
  /// `leading` is a first widget, `center` is a second one,
  /// `trailing` is a third, `spacer` is an optional [Widget] the will be
  /// placed between each widget from the list (default:
  /// `HSpacer.semiNormal()`).
  RowWithColumns.triple({
    super.key,
    Widget? leading,
    Widget? center,
    Widget? tailing,
    this.spacer,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
  })  : children = [leading, center, tailing],
        columnCount = 3;

  /// Returns a [List] of [RowWithColumns] widgets (that could be used, e.g, in
  /// a [Column]).
  /// `columnCount` defines number of widgets in each row,
  /// `spacer` is an optional [Widget] the will be placed
  /// between each widget from the list (default: `HSpacer.semiNormal()`).
  static List<RowWithColumns> multipleFromList({
    required List<Widget?> children,
    required int columnCount,
    Widget? spacer,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisAlignment? mainAxisAlignment,
  }) {
    return children
        .slices(columnCount)
        .map(
          (slice) => RowWithColumns(
            key: ValueKey(slice),
            columnCount: columnCount,
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            spacer: spacer,
            children: slice.length == columnCount
                ? slice
                : [
                    ...slice,
                    for (var i = slice.length; i < columnCount; i++) null
                  ],
          ),
        )
        .toList();
  }

  /// A list of widgets placed in the row.
  final List<Widget?> children;

  /// A number of widgets placed in the row.
  final int columnCount;

  /// A spacer placed between each widget in the row.
  final Widget? spacer;

  /// How the children should be placed along the cross axis in a flex layout.
  final CrossAxisAlignment? crossAxisAlignment;

  /// How the children should be placed along the main axis in a flex layout.
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: children
          .map((w) => Expanded(child: w ?? const SizedBox.shrink()))
          .toList()
          .joinWithSeparator(spacer ?? HSpacer.semiNormal()),
    );
  }
}
