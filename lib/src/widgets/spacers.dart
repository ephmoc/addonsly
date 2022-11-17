import 'package:addonsly/src/constants/paddings.dart';
import 'package:flutter/widgets.dart';

/// [VSpacer] creates a vertical separation between Widgets
/// the same way you would use a SizedBox, but with predefined values
/// from [Paddings]
///
/// Example:
/// ```dart
///    VSpacer.xxSmall(),
///    VSpacer.xSmall(),
///    VSpacer.small(),
///    VSpacer.normal(),
///    VSpacer.semiNormal(),
///    VSpacer.semiMedium(),
///    VSpacer.medium(),
///    VSpacer.mediumLarge(),
///    VSpacer.mediumXLarge(),
///    VSpacer.large(),
///    VSpacer.xLarge(),
///    VSpacer.xxLarge(),
///    VSpacer.xxxLarge(),
/// ```
///
/// See also:
///
///  * [Paddings]
///  * [HSpacer]
class VSpacer extends SizedBox {
  /// [VSpacer] with custom paddings
  const VSpacer({super.key, required double super.height});

  /// [VSpacer] with [2.0] as padding
  factory VSpacer.xxSmall() => const VSpacer(height: Paddings.xxSmall);

  /// [VSpacer] with [4.0] as padding
  factory VSpacer.xSmall() => const VSpacer(height: Paddings.xSmall);

  /// [VSpacer] with [6.0] as padding
  factory VSpacer.small() => const VSpacer(height: Paddings.small);

  /// [VSpacer] with [8.0] as padding
  factory VSpacer.normal() => const VSpacer(height: Paddings.normal);

  /// [VSpacer] with [10.0] as padding
  factory VSpacer.semiNormal() => const VSpacer(height: Paddings.semiNormal);

  /// [VSpacer] with [12.0] as padding
  factory VSpacer.semiMedium() => const VSpacer(height: Paddings.semiMedium);

  /// [VSpacer] with [16.0] as padding
  factory VSpacer.medium() => const VSpacer(height: Paddings.medium);

  /// [VSpacer] with [20.0] as padding
  factory VSpacer.mediumLarge() => const VSpacer(height: Paddings.mediumLarge);

  /// [VSpacer] with [24.0] as padding
  factory VSpacer.mediumXLarge() =>
      const VSpacer(height: Paddings.mediumXLarge);

  /// [VSpacer] with [32.0] as padding
  factory VSpacer.large() => const VSpacer(height: Paddings.large);

  /// [VSpacer] with [36.0] as padding
  factory VSpacer.xLarge() => const VSpacer(height: Paddings.xLarge);

  /// [VSpacer] with [48.0] as padding
  factory VSpacer.xxLarge() => const VSpacer(height: Paddings.xxLarge);

  /// [VSpacer] with [64.0] as padding
  factory VSpacer.xxxLarge() => const VSpacer(height: Paddings.xxxLarge);
}

/// [HSpacer] creates a horizontal separation between Widgets
/// the same way you would use a SizedBox, but with predefined values
/// from [Paddings]
///
/// Example:
/// ```dart
///    HSpacer.small()
///    HSpacer.normal()
///    HSpacer.semi()
///    HSpacer.mediumSmall()
///    HSpacer.medium()
///    HSpacer.medium20()
///    HSpacer.mediumLarge()
///    HSpacer.large()
///    HSpacer.xLarge()
///    HSpacer.xxLarge()
/// ```
///
/// See also:
///
///  * [Paddings]
///  * [VSpacer]
class HSpacer extends SizedBox {
  /// [HSpacer] with custom paddings
  const HSpacer({super.key, required double super.width});

  /// [HSpacer] with [2.0] as padding
  factory HSpacer.xxSmall() => const HSpacer(width: Paddings.xxSmall);

  /// [HSpacer] with [4.0] as padding
  factory HSpacer.xSmall() => const HSpacer(width: Paddings.xSmall);

  /// [HSpacer] with [6.0] as padding
  factory HSpacer.small() => const HSpacer(width: Paddings.small);

  /// [HSpacer] with [8.0] as padding
  factory HSpacer.normal() => const HSpacer(width: Paddings.normal);

  /// [HSpacer] with [10.0] as padding
  factory HSpacer.semiNormal() => const HSpacer(width: Paddings.semiNormal);

  /// [HSpacer] with [12.0] as padding
  factory HSpacer.semiMedium() => const HSpacer(width: Paddings.semiMedium);

  /// [HSpacer] with [16.0] as padding
  factory HSpacer.medium() => const HSpacer(width: Paddings.medium);

  /// [HSpacer] with [20.0] as padding
  factory HSpacer.mediumLarge() => const HSpacer(width: Paddings.mediumLarge);

  /// [HSpacer] with [24.0] as padding
  factory HSpacer.mediumXLarge() => const HSpacer(width: Paddings.mediumXLarge);

  /// [HSpacer] with [32.0] as padding
  factory HSpacer.large() => const HSpacer(width: Paddings.large);

  /// [HSpacer] with [36.0] as padding
  factory HSpacer.xLarge() => const HSpacer(width: Paddings.xLarge);

  /// [HSpacer] with [48.0] as padding
  factory HSpacer.xxLarge() => const HSpacer(width: Paddings.xxLarge);

  /// [HSpacer] with [64.0] as padding
  factory HSpacer.xxxLarge() => const HSpacer(width: Paddings.xxxLarge);
}
