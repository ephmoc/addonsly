import 'package:addonsly/addonsly.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Object extensions', () {
    const List<Object?> texts = ['john doe', null, Divider(), 1];
    test('Unwrapper', () {
      final List<String> expected = [
        'john doe',
        '-',
        const Divider().toString(),
        '1'
      ];
      final List<String> results = texts.map((t) => t.unwrappedString).toList();

      for (final result in results.asMap().entries) {
        expect(result.value, equals(expected[result.key]));
      }
    });
  });
}
