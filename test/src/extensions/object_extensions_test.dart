import 'package:addonsly/addonsly.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Object extensions', () {
    const texts = ['john doe', null, Divider(), 1];
    test('Unwrapper', () {
      final expected = <String>[
        'john doe',
        '-',
        const Divider().toString(),
        '1'
      ];
      final results = texts.map((t) => t.unwrappedString).toList();

      for (final result in results.asMap().entries) {
        expect(result.value, equals(expected[result.key]));
      }
    });
  });
}
