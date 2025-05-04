// Flutter imports:
import "package:flutter/material.dart";
import "package:flutter/services.dart";

// Package imports:
import "package:google_fonts/google_fonts.dart";

// Project imports:
import '../dimens/dimens.dart';
import "app_colors.dart";
import "app_text_styles.dart";

class MaterialTheme {
  const MaterialTheme([this.context]);

  final BuildContext? context;

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      // Seed color
      seed: AppColors.lightSeed,
      // Palette colors
      paletteError: AppColors.lightError,
      paletteNeutral: AppColors.lightNeutral,
      paletteNeutralVariant: AppColors.lightNeutralVariant,
      palettePrimary: AppColors.lightPrimary,
      paletteSecondary: AppColors.lightSecondary,
      paletteTertiary: AppColors.lightTertiary,
      // Scheme colors
      brightness: Brightness.light,
      primary: AppColors.lightPrimary,
      surfaceTint: AppColors.lightSurfaceTint,
      onPrimary: AppColors.lightOnPrimary,
      primaryContainer: AppColors.lightPrimaryContainer,
      onPrimaryContainer: AppColors.lightOnPrimaryContainer,
      secondary: AppColors.lightSecondary,
      onSecondary: AppColors.lightOnSecondary,
      secondaryContainer: AppColors.lightSecondaryContainer,
      onSecondaryContainer: AppColors.lightOnSecondaryContainer,
      tertiary: AppColors.lightTertiary,
      onTertiary: AppColors.lightOnTertiary,
      tertiaryContainer: AppColors.lightTertiaryContainer,
      onTertiaryContainer: AppColors.lightOnTertiaryContainer,
      error: AppColors.lightError,
      onError: AppColors.lightOnError,
      errorContainer: AppColors.lightErrorContainer,
      onErrorContainer: AppColors.lightOnErrorContainer,
      background: AppColors.lightBackground,
      onBackground: AppColors.lightOnBackground,
      surface: AppColors.lightSurface,
      onSurface: AppColors.lightOnSurface,
      surfaceVariant: AppColors.lightSurfaceVariant,
      onSurfaceVariant: AppColors.lightOnSurfaceVariant,
      outline: AppColors.lightOutline,
      outlineVariant: AppColors.lightOutlineVariant,
      shadow: AppColors.lightShadow,
      scrim: AppColors.lightScrim,
      inverseSurface: AppColors.lightInverseSurface,
      inverseOnSurface: AppColors.lightInverseOnSurface,
      inversePrimary: AppColors.lightInversePrimary,
      primaryFixed: AppColors.lightPrimaryFixed,
      onPrimaryFixed: AppColors.lightOnPrimaryFixed,
      primaryFixedDim: AppColors.lightPrimaryFixedDim,
      onPrimaryFixedVariant: AppColors.lightOnPrimaryFixedVariant,
      secondaryFixed: AppColors.lightSecondaryFixed,
      onSecondaryFixed: AppColors.lightOnSecondaryFixed,
      secondaryFixedDim: AppColors.lightSecondaryFixedDim,
      onSecondaryFixedVariant: AppColors.lightOnSecondaryFixedVariant,
      tertiaryFixed: AppColors.lightTertiaryFixed,
      onTertiaryFixed: AppColors.lightOnTertiaryFixed,
      tertiaryFixedDim: AppColors.lightTertiaryFixedDim,
      onTertiaryFixedVariant: AppColors.lightOnTertiaryFixedVariant,
      surfaceDim: AppColors.lightSurfaceDim,
      surfaceBright: AppColors.lightSurfaceBright,
      surfaceContainerLowest: AppColors.lightSurfaceContainerLowest,
      surfaceContainerLow: AppColors.lightSurfaceContainerLow,
      surfaceContainer: AppColors.lightSurfaceContainer,
      surfaceContainerHigh: AppColors.lightSurfaceContainerHigh,
      surfaceContainerHighest: AppColors.lightSurfaceContainerHighest,
    );
  }

  static ThemeData light() {
    return theme(lightScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      // Seed color
      seed: AppColors.darkSeed,
      // Palette colors
      paletteError: AppColors.darkError,
      paletteNeutral: AppColors.darkNeutral,
      paletteNeutralVariant: AppColors.darkNeutralVariant,
      palettePrimary: AppColors.darkPrimary,
      paletteSecondary: AppColors.darkSecondary,
      paletteTertiary: AppColors.darkTertiary,
      // Scheme colors
      brightness: Brightness.dark,
      primary: AppColors.darkPrimary,
      surfaceTint: AppColors.darkSurfaceTint,
      onPrimary: AppColors.darkOnPrimary,
      primaryContainer: AppColors.darkPrimaryContainer,
      onPrimaryContainer: AppColors.darkOnPrimaryContainer,
      secondary: AppColors.darkSecondary,
      onSecondary: AppColors.darkOnSecondary,
      secondaryContainer: AppColors.darkSecondaryContainer,
      onSecondaryContainer: AppColors.darkOnSecondaryContainer,
      tertiary: AppColors.darkTertiary,
      onTertiary: AppColors.darkOnTertiary,
      tertiaryContainer: AppColors.darkTertiaryContainer,
      onTertiaryContainer: AppColors.darkOnTertiaryContainer,
      error: AppColors.darkError,
      onError: AppColors.darkOnError,
      errorContainer: AppColors.darkErrorContainer,
      onErrorContainer: AppColors.darkOnErrorContainer,
      background: AppColors.darkBackground,
      onBackground: AppColors.darkOnBackground,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkOnSurface,
      surfaceVariant: AppColors.darkSurfaceVariant,
      onSurfaceVariant: AppColors.darkOnSurfaceVariant,
      outline: AppColors.darkOutline,
      outlineVariant: AppColors.darkOutlineVariant,
      shadow: AppColors.darkShadow,
      scrim: AppColors.darkScrim,
      inverseSurface: AppColors.darkInverseSurface,
      inverseOnSurface: AppColors.darkInverseOnSurface,
      inversePrimary: AppColors.darkInversePrimary,
      primaryFixed: AppColors.darkPrimaryFixed,
      onPrimaryFixed: AppColors.darkOnPrimaryFixed,
      primaryFixedDim: AppColors.darkPrimaryFixedDim,
      onPrimaryFixedVariant: AppColors.darkOnPrimaryFixedVariant,
      secondaryFixed: AppColors.darkSecondaryFixed,
      onSecondaryFixed: AppColors.darkOnSecondaryFixed,
      secondaryFixedDim: AppColors.darkSecondaryFixedDim,
      onSecondaryFixedVariant: AppColors.darkOnSecondaryFixedVariant,
      tertiaryFixed: AppColors.darkTertiaryFixed,
      onTertiaryFixed: AppColors.darkOnTertiaryFixed,
      tertiaryFixedDim: AppColors.darkTertiaryFixedDim,
      onTertiaryFixedVariant: AppColors.darkOnTertiaryFixedVariant,
      surfaceDim: AppColors.darkSurfaceDim,
      surfaceBright: AppColors.darkSurfaceBright,
      surfaceContainerLowest: AppColors.darkSurfaceContainerLowest,
      surfaceContainerLow: AppColors.darkSurfaceContainerLow,
      surfaceContainer: AppColors.darkSurfaceContainer,
      surfaceContainerHigh: AppColors.darkSurfaceContainerHigh,
      surfaceContainerHighest: AppColors.darkSurfaceContainerHighest,
    );
  }

  static ThemeData dark() {
    return theme(darkScheme());
  }

  static ThemeData theme(MaterialScheme materialScheme) => ThemeData(
        useMaterial3: true,
        brightness: materialScheme.brightness,
        colorScheme: materialScheme.toColorScheme(),
        textTheme: GoogleFonts.robotoTextTheme(AppTextStyles.textTheme),
        scaffoldBackgroundColor: materialScheme.paletteNeutral[100],
        canvasColor: materialScheme.onPrimary,
        appBarTheme: AppBarTheme(
          backgroundColor: materialScheme.paletteNeutral[100],
          scrolledUnderElevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        popupMenuTheme: PopupMenuThemeData(
          surfaceTintColor: Colors.white,
          color: materialScheme.surfaceContainerLowest,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Dimens.borderRadiusMD,
            ),
            side: BorderSide(
              color: materialScheme.surfaceTint.withValues(alpha: 0.11),
              width: Dimens.d1,
            ),
          ),
          shadowColor: materialScheme.shadow,
          elevation: 1,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: materialScheme.seed,
          linearTrackColor: materialScheme.surfaceTint.withValues(alpha: 0.14),
        ),
        dialogTheme: const DialogTheme(
          surfaceTintColor: Colors.white,
        ),
        cardTheme: const CardTheme(
          surfaceTintColor: Colors.white,
        ),
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return materialScheme.paletteNeutral[100];
            }
            return states.contains(WidgetState.disabled)
                ? materialScheme.paletteNeutral[40]!.withValues(alpha: 0.38)
                : materialScheme.paletteNeutral[40];
          }),
          thumbIcon: WidgetStateProperty.resolveWith((states) {
            Color? iconColor;
            if (states.contains(WidgetState.selected)) {
              iconColor = materialScheme.paletteNeutral[100];
            } else {
              iconColor = states.contains(WidgetState.disabled)
                  ? Colors.transparent
                  : materialScheme.paletteNeutral[40];
            }

            return Icon(
              Icons.circle,
              color: iconColor,
            );
          }),
          trackColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return states.contains(WidgetState.disabled)
                  ? materialScheme.surfaceTint.withValues(alpha: 0.12)
                  : materialScheme.seed;
            }
            return states.contains(WidgetState.disabled)
                ? materialScheme.surfaceTint.withValues(alpha: 0.08)
                : Colors.transparent;
          }),
          trackOutlineColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return states.contains(WidgetState.disabled)
                  ? Colors.transparent
                  : materialScheme.seed;
            }
            return states.contains(WidgetState.disabled)
                ? materialScheme.surfaceTint.withValues(alpha: 0.08)
                : materialScheme.paletteNeutral[80];
          }),
          trackOutlineWidth: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return 0.0;
            }
            return 2.0;
          }),
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            return states.contains(WidgetState.disabled)
                ? materialScheme.paletteNeutral[80]!.withValues(alpha: 0.38)
                : states.contains(WidgetState.selected)
                    ? materialScheme.seed
                    : materialScheme.paletteNeutral[80];
          }),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          splashRadius: Dimens.d0,
        ),
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.disabled)) {
                return states.contains(WidgetState.selected)
                    ? materialScheme.surface
                    : Colors.transparent;
              }

              return states.contains(WidgetState.selected)
                  ? materialScheme.onPrimaryFixedVariant
                  : Colors.transparent;
            },
          ),
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return states.contains(WidgetState.disabled)
                  ? materialScheme.paletteNeutral[80]!.withValues(alpha: 0.38)
                  : materialScheme.seed;
            }

            return Colors.transparent;
          }),
          side: WidgetStateBorderSide.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const BorderSide(
                color: Colors.transparent,
                width: Dimens.sizeSpacing4XS,
              );
            }

            return BorderSide(
              color: states.contains(WidgetState.disabled)
                  ? materialScheme.paletteNeutral[80]!.withValues(alpha: 0.38)
                  : materialScheme.paletteNeutral[80]!,
              width: Dimens.sizeSpacing4XS,
            );
          }),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Dimens.borderRadiusXS,
            ),
          ),
        ),
        dividerTheme: DividerThemeData(
          color: materialScheme.paletteNeutral[90],
          thickness: Dimens.sizeSpacing5XS,
        ),
        iconTheme: IconThemeData(
          opticalSize: 24,
          color: materialScheme.paletteNeutral[15],
        ),
        tabBarTheme: TabBarTheme(
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: Dimens.sizeSpacing4XS,
              color: materialScheme.seed,
            ),
            insets: const EdgeInsets.symmetric(
              horizontal: Dimens.d0,
            ),
          ),
          dividerColor: materialScheme.paletteNeutral[95],
          labelStyle: AppTextStyles.bodyMedium?.copyWith(
            color: materialScheme.seed,
          ),
          unselectedLabelStyle: AppTextStyles.bodyMedium?.copyWith(
            color: materialScheme.paletteNeutral[15],
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: defaultButtonStyle(materialScheme),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: defaultButtonStyle(materialScheme).copyWith(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return materialScheme.surfaceTint.withValues(alpha: 0.12);
              }
              return Colors.transparent;
            }),
            side: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.disabled)) {
                return BorderSide(
                  color: materialScheme.paletteNeutral[95]!,
                );
              }
              return BorderSide(
                color: materialScheme.outline,
              );
            }),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: defaultButtonStyle(materialScheme).copyWith(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return materialScheme.primary.withValues(alpha: 0.12);
              }
              return Colors.transparent;
            }),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: defaultButtonStyle(materialScheme).copyWith(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.disabled)) {
                return materialScheme.surfaceTint.withValues(alpha: 0.08);
              }
              return materialScheme.surfaceContainer;
            }),
            elevation: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.disabled)) {
                return 0.0;
              }
              return 2.0;
            }),
          ),
        ),
      );

  static ButtonStyle defaultButtonStyle(MaterialScheme materialScheme) {
    return ButtonStyle(
      iconSize: WidgetStateProperty.resolveWith((states) {
        return Dimens.iconSizeM;
      }),
      textStyle: WidgetStateProperty.resolveWith((states) {
        return AppTextStyles.buttonLarge;
      }),
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return materialScheme.paletteNeutral[95];
        }
        return materialScheme.seed;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return materialScheme.onSurface;
        }
        return materialScheme.onPrimaryFixedVariant;
      }),
      padding: WidgetStateProperty.resolveWith((states) {
        return const EdgeInsets.symmetric(
          vertical: Dimens.d10,
          horizontal: Dimens.sizeSpacingLG,
        );
      }),
      shape: WidgetStateProperty.resolveWith((states) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimens.borderRadiusMD,
          ),
        );
      }),
      minimumSize: WidgetStateProperty.resolveWith((states) {
        return const Size(
          Dimens.d20,
          Dimens.d20,
        );
      }),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  ButtonStyle get filledButtonTonalStyle {
    MaterialScheme materialScheme;

    if (context != null) {
      final Brightness brightness = Theme.of(context!).brightness;

      materialScheme =
          brightness == Brightness.light ? lightScheme() : darkScheme();
    } else {
      materialScheme = darkScheme();
    }

    return defaultButtonStyle(materialScheme).copyWith(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return materialScheme.paletteNeutral[10];
        }
        return materialScheme.secondaryContainer;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return materialScheme.palettePrimary[100];
        }
        return materialScheme.onSecondaryContainer;
      }),
    );
  }
}

class MaterialScheme {
  const MaterialScheme({
    // Seed color
    required this.seed,
    // Palette colors
    required this.paletteError,
    required this.paletteNeutral,
    required this.paletteNeutralVariant,
    required this.palettePrimary,
    required this.paletteSecondary,
    required this.paletteTertiary,
    // Scheme colors
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  // Seed color
  final Color seed;

  // Palette colors
  final MaterialColor paletteError;
  final MaterialColor paletteNeutral;
  final MaterialColor paletteNeutralVariant;
  final MaterialColor palettePrimary;
  final MaterialColor paletteSecondary;
  final MaterialColor paletteTertiary;

  // Scheme colors
  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
      onPrimaryFixed: onPrimaryFixed,
      onPrimaryFixedVariant: onPrimaryFixedVariant,
      onSecondaryFixed: onSecondaryFixed,
      onSecondaryFixedVariant: onSecondaryFixedVariant,
      onTertiaryFixed: onTertiaryFixed,
      onTertiaryFixedVariant: onTertiaryFixedVariant,
      primaryFixed: primaryFixed,
      primaryFixedDim: primaryFixedDim,
      secondaryFixed: secondaryFixed,
      secondaryFixedDim: secondaryFixedDim,
      tertiaryFixed: tertiaryFixed,
      surfaceBright: surfaceBright,
      surfaceContainer: surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh,
      surfaceContainerHighest: surfaceContainerHighest,
      surfaceContainerLow: surfaceContainerLow,
      surfaceContainerLowest: surfaceContainerLowest,
      surfaceDim: surfaceDim,
      surfaceTint: surfaceTint,
      tertiaryFixedDim: tertiaryFixedDim,
    );
  }
}
