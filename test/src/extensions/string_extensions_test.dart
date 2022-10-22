import 'package:addonsly/addonsly.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('String extensions', () {
    const List<String> texts = ['john doe', '', 'a', '9'];
    test('Capitalization', () {
      const List<String> expected = ['John doe', '', 'A', '9'];
      final List<String> results = texts.map((t) => t.capitalized).toList();

      for (final result in results.asMap().entries) {
        expect(result.value.length, equals(texts[result.key].length));
        expect(result.value, equals(expected[result.key]));
      }
    });

    test('First letter capitalized', () {
      const List<String?> expected = ['J', null, 'A', '9'];
      final List<String?> results =
          texts.map((t) => t.firstCapitalLetter).toList();

      for (final result in results.asMap().entries) {
        if (result.value?.isNotEmpty ?? false) {
          expect(result.value?.length, equals(1));
        } else {
          expect(result.value, equals(null));
        }
        expect(result.value, equals(expected[result.key]));
      }
    });
  });

  group('Nullable String extensions', () {
    const List<String?> texts = ['john doe', '', null, '9'];
    test('nullify', () {
      const List<String?> expected = ['john doe', null, null, '9'];
      final List<String?> results = texts.map((t) => t.nullify).toList();

      for (final result in results.asMap().entries) {
        expect(result.value, equals(expected[result.key]));
      }
    });
  });
}
