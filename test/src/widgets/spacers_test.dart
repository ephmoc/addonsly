import 'package:addonsly/addonsly.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('VSpacers test', () {
    final vSpacers = {
      2.0: VSpacer.xxSmall(),
      4.0: VSpacer.xSmall(),
      6.0: VSpacer.small(),
      8.0: VSpacer.normal(),
      10.0: VSpacer.semiNormal(),
      12.0: VSpacer.semiMedium(),
      16.0: VSpacer.medium(),
      20.0: VSpacer.mediumLarge(),
      24.0: VSpacer.mediumXLarge(),
      32.0: VSpacer.large(),
      36.0: VSpacer.xLarge(),
      48.0: VSpacer.xxLarge(),
      64.0: VSpacer.xxxLarge(),
    };
    for (final pair in vSpacers.entries) {
      testWidgets('VSpacer test: ${pair.value}', (tester) async {
        final widget = pair.value;
        await tester.pumpWidget(Center(child: widget));
        final finder = find.byWidget(widget);
        expect(finder, findsOneWidget);
        final baseSize = tester.getSize(finder);
        expect(baseSize.height, equals(pair.key));
        expect(baseSize.width, equals(0));
      });
    }
  });

  group('HSpacers test', () {
    final hSpacers = {
      2.0: HSpacer.xxSmall(),
      4.0: HSpacer.xSmall(),
      6.0: HSpacer.small(),
      8.0: HSpacer.normal(),
      10.0: HSpacer.semiNormal(),
      12.0: HSpacer.semiMedium(),
      16.0: HSpacer.medium(),
      20.0: HSpacer.mediumLarge(),
      24.0: HSpacer.mediumXLarge(),
      32.0: HSpacer.large(),
      36.0: HSpacer.xLarge(),
      48.0: HSpacer.xxLarge(),
      64.0: HSpacer.xxxLarge(),
    };
    for (final pair in hSpacers.entries) {
      testWidgets('HSpacer test: ${pair.value}', (tester) async {
        final widget = pair.value;
        await tester.pumpWidget(Center(child: widget));
        final finder = find.byWidget(widget);
        expect(finder, findsOneWidget);
        final baseSize = tester.getSize(finder);
        expect(baseSize.width, equals(pair.key));
        expect(baseSize.height, equals(0));
      });
    }
  });
}
