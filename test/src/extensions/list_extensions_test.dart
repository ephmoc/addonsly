import 'package:addonsly/addonsly.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('List extensions', () {
    final list = [
      1,
      [const Text('')],
      null,
      'dummy'
    ];
    test('Coping', () {
      final result = list.copy;

      expect(result.length, equals(list.length));
      for (final element in result.asMap().entries.toList()) {
        expect(element.value, equals(list[element.key]));
      }
    });

    test('Enumeration', () {
      final result = list.enumerated;
      final expected = list.asMap().entries.toList();

      expect(result.length, equals(expected.length));

      for (final element in result) {
        expect(element.runtimeType, equals(expected[element.key].runtimeType));
      }
    });
  });
}
