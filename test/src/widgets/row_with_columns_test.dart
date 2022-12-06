import 'package:addonsly/addonsly.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RowWithColumns test', () {
    final children = <Widget>[
      const Text('first'),
      const Text('second'),
      const Icon(Icons.abc),
      const SizedBox(width: 50),
    ];

    testWidgets('RowWithColumns test: default constructor with standard values',
        (tester) async {
      const columnCount = 4;
      const key = Key('key');
      final widget = RowWithColumns(
        key: key,
        columnCount: columnCount,
        children: children,
      );
      await tester.pumpWidget(MaterialApp(home: Center(child: widget)));
      final finder = find.byKey(key);
      expect(finder, findsOneWidget);
      for (final w in children) {
        expect(find.byWidget(w), findsOneWidget);
      }
      final length =
          (tester.firstWidget(find.byType(Row)) as Row).children.length;
      expect(length, equals(2 * children.length - 1));
      expect(find.byType(HSpacer), findsNWidgets(children.length - 1));
    });

    testWidgets('RowWithColumns test: default constructor with wrong values',
        (tester) async {
      expect(
        () => RowWithColumns(columnCount: 0, children: children),
        throwsAssertionError,
      );
      expect(
        () => RowWithColumns(columnCount: -1, children: children),
        throwsAssertionError,
      );
    });

    testWidgets('RowWithColumns test: double constructor with standard values',
        (tester) async {
      const key = Key('key');
      final widget = RowWithColumns.double(
        key: key,
        leading: children[0],
        tailing: children[1],
      );
      await tester.pumpWidget(MaterialApp(home: Center(child: widget)));
      final finder = find.byKey(key);
      expect(finder, findsOneWidget);
      expect(find.text('first'), findsOneWidget);
      expect(find.text('second'), findsOneWidget);
      expect(find.byType(HSpacer), findsOneWidget);
    });

    testWidgets('RowWithColumns test: triple constructor with standard values',
        (tester) async {
      const key = Key('key');
      final widget = RowWithColumns.triple(
        key: key,
        leading: children[0],
        center: children[1],
        tailing: children[2],
      );
      await tester.pumpWidget(MaterialApp(home: Center(child: widget)));
      final finder = find.byKey(key);
      expect(finder, findsOneWidget);
      expect(find.text('first'), findsOneWidget);
      expect(find.text('second'), findsOneWidget);
      expect(find.byType(Icon), findsOneWidget);
      expect(find.byType(HSpacer), findsNWidgets(2));
    });
  });

  group('RowWithColumns multiple test', () {
    final children = <Widget?>[
      const Text('first'),
      const Text('second'),
      const Icon(Icons.abc),
      const SizedBox(width: 50),
      null,
    ];
    for (final columnCount in List.generate(8, (i) => i + 1)) {
      final rows = RowWithColumns.multipleFromList(
        children: children,
        columnCount: columnCount,
      );
      testWidgets('RowWithColumns multiple test for $columnCount columns',
          (tester) async {
        await tester.pumpWidget(
          MaterialApp(home: Center(child: Column(children: rows))),
        );
        expect(
          find.byType(RowWithColumns),
          findsNWidgets((children.length / columnCount).ceil()),
        );
        final lastWidget = tester.widgetList(find.byType(RowWithColumns)).last
            as RowWithColumns;
        expect(lastWidget.children.length, columnCount);
      });
    }
  });
}
