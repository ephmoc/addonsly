import 'package:addonsly/addonsly.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Widgets extensions', () {
    final List<List<Widget>> lists = [
      List.generate(3, (index) => Text('$index')),
      [const Text('')],
      [],
    ];
    test('Adding separator', () {
      const separator = Divider();
      final results = lists.map((l) => l.joinWithSeparator(separator)).toList();
      final List<List<Widget>> expected = [
        [
          const Text('0'),
          separator,
          const Text('1'),
          separator,
          const Text('2'),
        ],
        [const Text('')],
        [],
      ];

      for (final result in results.asMap().entries.toList()) {
        expect(result.value.length, equals(expected[result.key].length));
        if (result.value.isNotEmpty) {
          expect(result.value.first.runtimeType,
              equals(expected[result.key].first.runtimeType));
        }
        if (result.value.length > 1) {
          expect(result.value[1].runtimeType, equals(separator.runtimeType));
        }
      }
    });
  });
}
