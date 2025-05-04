// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import '../dimens/dimens.dart';

// Project imports:

class AppTextStyles {
  AppTextStyles._();

  static TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );

  static TextStyle? displayLarge =
      GoogleFonts.robotoTextTheme().displayLarge?.copyWith(
            fontSize: Dimens.d57,
            height: Dimens.d64 / Dimens.d57,
            letterSpacing: -0.25,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? displayMedium =
      GoogleFonts.robotoTextTheme().displayMedium?.copyWith(
            fontSize: Dimens.d45,
            height: Dimens.d52 / Dimens.d45,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? displaySmall =
      GoogleFonts.robotoTextTheme().displaySmall?.copyWith(
            fontSize: Dimens.d36,
            height: Dimens.d44 / Dimens.d36,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? headlineLarge =
      GoogleFonts.robotoTextTheme().headlineLarge?.copyWith(
            fontSize: Dimens.d32,
            height: Dimens.d40 / Dimens.d32,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? headlineMedium =
      GoogleFonts.robotoTextTheme().headlineMedium?.copyWith(
            fontSize: Dimens.d28,
            height: Dimens.d36 / Dimens.d28,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? headlineSmall =
      GoogleFonts.robotoTextTheme().headlineSmall?.copyWith(
            fontSize: Dimens.d24,
            height: Dimens.d32 / Dimens.d24,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? titleLarge =
      GoogleFonts.robotoTextTheme().titleLarge?.copyWith(
            fontSize: Dimens.d22,
            height: Dimens.d28 / Dimens.d22,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
          );

  static TextStyle? titleMedium =
      GoogleFonts.robotoTextTheme().titleMedium?.copyWith(
            fontSize: Dimens.d16,
            height: Dimens.d24 / Dimens.d16,
            letterSpacing: 0.15,
            fontWeight: FontWeight.w500,
          );

  static TextStyle? titleSmall =
      GoogleFonts.robotoTextTheme().titleSmall?.copyWith(
            fontSize: Dimens.d14,
            height: Dimens.d20 / Dimens.d14,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w500,
          );

  static TextStyle? bodyLarge =
      GoogleFonts.robotoTextTheme().bodyLarge?.copyWith(
            fontSize: Dimens.d16,
            height: Dimens.d24 / Dimens.d16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? bodyMedium =
      GoogleFonts.robotoTextTheme().bodyMedium?.copyWith(
            fontSize: Dimens.d14,
            height: Dimens.d20 / Dimens.d14,
            letterSpacing: 0.25,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? bodySmall =
      GoogleFonts.robotoTextTheme().bodySmall?.copyWith(
            fontSize: Dimens.d12,
            height: Dimens.d16 / Dimens.d12,
            letterSpacing: 0.4,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? bodyTiny =
      GoogleFonts.robotoTextTheme().bodySmall?.copyWith(
            fontSize: Dimens.d10,
            height: Dimens.d16 / Dimens.d10,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? labelLarge =
      GoogleFonts.robotoTextTheme().labelLarge?.copyWith(
            fontSize: Dimens.d14,
            height: Dimens.d20 / Dimens.d14,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w500,
          );

  static TextStyle? labelLargeProminent =
      GoogleFonts.robotoTextTheme().labelLarge?.copyWith(
            fontSize: Dimens.d14,
            height: Dimens.d20 / Dimens.d14,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w600,
          );

  static TextStyle? labelMedium =
      GoogleFonts.robotoTextTheme().labelMedium?.copyWith(
            fontSize: Dimens.d12,
            height: Dimens.d16 / Dimens.d12,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w500,
          );

  static TextStyle? labelMediumProminent =
      GoogleFonts.robotoTextTheme().labelMedium?.copyWith(
            fontSize: Dimens.d12,
            height: Dimens.d16 / Dimens.d12,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600,
          );

  static TextStyle? labelSmall =
      GoogleFonts.robotoTextTheme().labelSmall?.copyWith(
            fontSize: Dimens.d11,
            height: Dimens.d16 / Dimens.d11,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w500,
          );

  static TextStyle? labelTiny =
      GoogleFonts.robotoTextTheme().labelSmall?.copyWith(
            fontSize: Dimens.d10,
            height: Dimens.d16 / Dimens.d10,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          );

  static TextStyle? elevationBold = GoogleFonts.quicksand().copyWith(
    fontSize: Dimens.d24,
    height: Dimens.d24 / Dimens.d32,
    letterSpacing: 2,
    fontWeight: FontWeight.w700,
    shadows: [
      Shadow(
        color: Color(0x26000000),
        offset: Offset(0, 8),
        blurRadius: 12,
      ),
      Shadow(
        color: Color(0x4D000000),
        offset: Offset(0, 4),
        blurRadius: 4,
      ),
    ],
  );

  static TextStyle? dialogTitle = GoogleFonts.robotoSerif().copyWith(
    fontSize: Dimens.d32,
    height: Dimens.d40 / Dimens.d32,
    fontWeight: FontWeight.w700,
  );

  static TextStyle? elevationLight = GoogleFonts.quicksand().copyWith(
    fontSize: Dimens.d24,
    height: Dimens.d24 / Dimens.d32,
    letterSpacing: 4,
    fontWeight: FontWeight.w400,
    shadows: [
      Shadow(
        color: Color(0x26000000),
        offset: Offset(0, 8),
        blurRadius: 12,
      ),
      Shadow(
        color: Color(0x4D000000),
        offset: Offset(0, 4),
        blurRadius: 4,
      ),
    ],
  );

  static TextStyle? buttonLarge =
      GoogleFonts.robotoTextTheme().labelLarge?.copyWith(
            fontSize: Dimens.d14,
            height: Dimens.d20 / Dimens.d14,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w700,
          );

  static TextStyle? buttonSmall =
      GoogleFonts.robotoTextTheme().labelMedium?.copyWith(
            fontSize: Dimens.d12,
            height: Dimens.d16 / Dimens.d12,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w700,
          );

  static TextStyle? bodyHtml =
      GoogleFonts.robotoTextTheme().bodyMedium?.copyWith(
            fontSize: Dimens.d14,
            height: Dimens.d20 / Dimens.d14,
            letterSpacing: 0.25,
            fontWeight: FontWeight.w400,
          );

  static TextStyle? markdownParagraph = bodyMedium;

  static TextStyle? markdownStrong = labelLargeProminent;

  static TextStyle? markdownLink = labelLargeProminent;

  static TextStyle? chartLegend = bodySmall;
}
