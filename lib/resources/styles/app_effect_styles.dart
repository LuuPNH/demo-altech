// Dart imports:

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Project imports:
import '../dimens/dimens.dart';
import 'app_colors.dart';

class AppEffectStyles {
  BuildContext context;

  AppEffectStyles(this.context);

  static BoxShadow get navBarShadow {
    return BoxShadow(
      color: const Color(0xFF000000).withValues(alpha: 0.04),
      offset: const Offset(0, -2),
      blurRadius: 2,
      spreadRadius: 0,
    );
  }

  static BoxShadow get innerShadow {
    return BoxShadow(
      color: const Color(0xFF907400).withValues(alpha: 0.32),
      offset: const Offset(0, -1),
      blurRadius: 2,
      spreadRadius: -2,
    );
  }

  static BoxShadow get generalShadow {
    return BoxShadow(
      color: const Color(0xFF000000).withValues(alpha: 0.08),
      offset: const Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
    );
  }

  static BoxShadow get profileShadow {
    return BoxShadow(
      color: const Color(0xFF000000).withValues(alpha: 0.12),
      offset: const Offset(0, 0),
      blurRadius: 4,
      spreadRadius: 0,
    );
  }

  static ({double blurRadius, double spreadRadius}) get blurEffect {
    return (
      blurRadius: Dimens.d16,
      spreadRadius: Dimens.d2,
    );
  }

  static Shadow neonText({required double blurRadius}) {
    return Shadow(
      color: AppColors.darkSeed,
      offset: const Offset(0, 0),
      blurRadius: blurRadius,
    );
  }

  static List<Shadow> get titleBlur {
    return [
      neonText(blurRadius: 7),
      neonText(blurRadius: 21),
      neonText(blurRadius: 42),
      neonText(blurRadius: 82),
      neonText(blurRadius: 102),
      neonText(blurRadius: 111),
    ];
  }
}
