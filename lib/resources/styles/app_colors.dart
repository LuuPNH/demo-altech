// Flutter imports:
import 'package:flutter/material.dart';

class AppColors {
  BuildContext context;

  AppColors(this.context);

  // Light theme colors
  static const lightSeed = Color(0xFFFACC15);

  static const lightPrimary = MaterialColor(
    0xFF725C0C,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF191401),
      10: Color(0xFF322801),
      15: Color(0xFF4B3C02),
      20: Color(0xFF645002),
      25: Color(0xFF7D6403),
      30: Color(0xFF967803),
      35: Color(0xFFAF8C04),
      40: Color(0xFFC8A004),
      50: Color(0xFFFAC905),
      60: Color(0xFFFBD337),
      70: Color(0xFFFCDE69),
      80: Color(0xFFFDE99B),
      90: Color(0xFFFEF4CD),
      95: Color(0xFFFEFAE6),
      98: Color(0xFFFFFDF5),
      99: Color(0xFFFFFEFA),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightSecondary = MaterialColor(
    0xFF685E40,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF100E0A),
      10: Color(0xFF201C13),
      15: Color(0xFF2F2A1D),
      20: Color(0xFF3F3827),
      25: Color(0xFF4F4630),
      30: Color(0xFF5F543A),
      35: Color(0xFF6F6344),
      40: Color(0xFF7E714E),
      50: Color(0xFF9E8D61),
      60: Color(0xFFB1A481),
      70: Color(0xFFC5BAA0),
      80: Color(0xFFD8D1C0),
      90: Color(0xFFECE8DF),
      95: Color(0xFFF5F4EF),
      98: Color(0xFFFBFAF9),
      99: Color(0xFFFDFDFC),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightTertiary = MaterialColor(
    0xFF446732,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF091703),
      10: Color(0xFF132D06),
      15: Color(0xFF1C4409),
      20: Color(0xFF265A0C),
      25: Color(0xFF2F710F),
      30: Color(0xFF398712),
      35: Color(0xFF429E15),
      40: Color(0xFF4BB418),
      50: Color(0xFF5EE11E),
      60: Color(0xFF7EE74B),
      70: Color(0xFF9FED78),
      80: Color(0xFFBFF3A5),
      90: Color(0xFFDFF9D2),
      95: Color(0xFFEFFCE8),
      98: Color(0xFFF9FEF6),
      99: Color(0xFFFCFEFA),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightError = MaterialColor(
    0xFF904A45,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF180102),
      10: Color(0xFF310205),
      15: Color(0xFF490307),
      20: Color(0xFF620409),
      25: Color(0xFF7A060C),
      30: Color(0xFF92070E),
      35: Color(0xFFAB0810),
      40: Color(0xFFC30913),
      50: Color(0xFFF40B17),
      60: Color(0xFFF63C46),
      70: Color(0xFFF86D74),
      80: Color(0xFFFB9DA2),
      90: Color(0xFFFDCED1),
      95: Color(0xFFFEE7E8),
      98: Color(0xFFFFF5F6),
      99: Color(0xFFFFFAFA),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightNeutral = MaterialColor(
    0xFF262626,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF0D0D0D),
      10: Color(0xFF1A1A1A),
      15: Color(0xFF262626),
      20: Color(0xFF333333),
      25: Color(0xFF404040),
      30: Color(0xFF4D4D4D),
      35: Color(0xFF595959),
      40: Color(0xFF666666),
      50: Color(0xFF808080),
      60: Color(0xFF999999),
      70: Color(0xFFB3B3B3),
      80: Color(0xFFCCCCCC),
      90: Color(0xFFE6E6E6),
      95: Color(0xFFF2F2F2),
      98: Color(0xFFFAFAFA),
      99: Color(0xFFFCFCFC),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightNeutralVariant = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFF141107),
      10: Color(0xFF1F1B10),
      15: Color(0xFF2A251A),
      20: Color(0xFF353024),
      25: Color(0xFF403B2E),
      30: Color(0xFF4C4639),
      35: Color(0xFF585244),
      40: Color(0xFF645E4F),
      50: Color(0xFF7D7667),
      60: Color(0xFF979080),
      70: Color(0xFFB2AA9A),
      80: Color(0xFFCEC6B4),
      90: Color(0xFFEBE2CF),
      95: Color(0xFFF9F0DD),
      98: Color(0xFFFFF8F0),
      99: Color(0xFFFFFBFF),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightBlue = MaterialColor(
    0xFF0055CC,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF000B1A),
      10: Color(0xFF001533),
      15: Color(0xFF00204D),
      20: Color(0xFF002A66),
      25: Color(0xFF003580),
      30: Color(0xFF004099),
      35: Color(0xFF004AB2),
      40: Color(0xFF0055CC),
      50: Color(0xFF006AFF),
      60: Color(0xFF3388FF),
      70: Color(0xFF66A6FF),
      80: Color(0xFF99C3FF),
      90: Color(0xFFCCE1FF),
      95: Color(0xFFE5F0FF),
      98: Color(0xFFF5F9FF),
      99: Color(0xFFFAFCFF),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightCyan = MaterialColor(
    0xFF27A5A0,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF051514),
      10: Color(0xFF0A2928),
      15: Color(0xFF0F3E3C),
      20: Color(0xFF145250),
      25: Color(0xFF196764),
      30: Color(0xFF1D7C78),
      35: Color(0xFF22908C),
      40: Color(0xFF27A5A0),
      50: Color(0xFF31CEC8),
      60: Color(0xFF5AD8D3),
      70: Color(0xFF83E2DE),
      80: Color(0xFFADEBE9),
      90: Color(0xFFD6F5F4),
      95: Color(0xFFEAFAF9),
      98: Color(0xFFF7FDFD),
      99: Color(0xFFFBFEFE),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightMagenta = MaterialColor(
    0xFFBA126E,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF17020E),
      10: Color(0xFF2F041C),
      15: Color(0xFF460729),
      20: Color(0xFF5D0937),
      25: Color(0xFF740B45),
      30: Color(0xFF8C0D53),
      35: Color(0xFFA31060),
      40: Color(0xFFBA126E),
      50: Color(0xFFE9168A),
      60: Color(0xFFED45A1),
      70: Color(0xFFF273B9),
      80: Color(0xFFF6A2D0),
      90: Color(0xFFFBD0E8),
      95: Color(0xFFFDE8F3),
      98: Color(0xFFFEF6FA),
      99: Color(0xFFFFFAFD),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightOrange = MaterialColor(
    0xFFC86904,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF190D01),
      10: Color(0xFF321A01),
      15: Color(0xFF4B2802),
      20: Color(0xFF643502),
      25: Color(0xFF7D4203),
      30: Color(0xFF964F03),
      35: Color(0xFFAF5C04),
      40: Color(0xFFC86904),
      50: Color(0xFFFA8405),
      60: Color(0xFFFB9C37),
      70: Color(0xFFFCB569),
      80: Color(0xFFFDCE9B),
      90: Color(0xFFFEE6CD),
      95: Color(0xFFFEF3E6),
      98: Color(0xFFFFFAF5),
      99: Color(0xFFFFFDFA),
      100: Color(0xFFFFFFFF),
    },
  );

  static const lightPurple = MaterialColor(
    0xFF5B25A7,
    <int, Color>{
      0: Color(0xFF000000),
      5: Color(0xFF0B0515),
      10: Color(0xFF17092A),
      15: Color(0xFF220E3F),
      20: Color(0xFF2E1254),
      25: Color(0xFF391769),
      30: Color(0xFF441C7D),
      35: Color(0xFF502092),
      40: Color(0xFF5B25A7),
      50: Color(0xFF722ED1),
      60: Color(0xFF8E58DA),
      70: Color(0xFFAA82E3),
      80: Color(0xFFE3D5F6),
      90: Color(0xFFE3D5F6),
      95: Color(0xFFF1EAFA),
      98: Color(0xFFF9F7FD),
      99: Color(0xFFFCFBFE),
      100: Color(0xFFFFFFFF),
    },
  );

  // Scheme colors
  static const lightSurfaceTint = Color(0xFF725C0C);
  static const lightOnPrimary = Color(0xFFFFFFFF);
  static const lightPrimaryContainer = Color(0xFFFEE086);
  static const lightOnPrimaryContainer = Color(0xFF231B00);
  static const lightOnSecondary = Color(0xFFFFFFFF);
  static const lightSecondaryContainer = Color(0xFFF1E1BB);
  static const lightOnSecondaryContainer = Color(0xFF221B04);
  static const lightOnTertiary = Color(0xFFFFFFFF);
  static const lightTertiaryContainer = Color(0xFFC4EFAB);
  static const lightOnTertiaryContainer = Color(0xFF062100);
  static const lightOnError = Color(0xFFFFFFFF);
  static const lightErrorContainer = Color(0xFFFFDAD6);
  static const lightOnErrorContainer = Color(0xFF3B0908);
  static const lightBackground = Color(0xFFFFF8F0);
  static const lightOnBackground = Color(0xFF1E1B13);
  static const lightSurface = Color(0xFFFFF8F0);
  static const lightOnSurface = Color(0xFF1E1B13);
  static const lightSurfaceVariant = Color(0xFFEBE2CF);
  static const lightOnSurfaceVariant = Color(0xFF4C4639);
  static const lightOutline = Color(0xFF7D7667);
  static const lightOutlineVariant = Color(0xFFCEC6B4);
  static const lightShadow = Color(0xFF000000);
  static const lightScrim = Color(0xFF000000);
  static const lightInverseSurface = Color(0xFF343027);
  static const lightInverseOnSurface = Color(0xFFF8F0E2);
  static const lightInversePrimary = Color(0xFFE1C46D);
  static const lightPrimaryFixed = Color(0xFFFEE086);
  static const lightOnPrimaryFixed = Color(0xFF231B00);
  static const lightPrimaryFixedDim = Color(0xFFE1C46D);
  static const lightOnPrimaryFixedVariant = Color(0xFF574500);
  static const lightSecondaryFixed = Color(0xFFF1E1BB);
  static const lightOnSecondaryFixed = Color(0xFF221B04);
  static const lightSecondaryFixedDim = Color(0xFFD4C5A1);
  static const lightOnSecondaryFixedVariant = Color(0xFF50462A);
  static const lightTertiaryFixed = Color(0xFFC4EFAB);
  static const lightOnTertiaryFixed = Color(0xFF062100);
  static const lightTertiaryFixedDim = Color(0xFFA9D291);
  static const lightOnTertiaryFixedVariant = Color(0xFF2D4F1D);
  static const lightSurfaceDim = Color(0xFFE1D9CC);
  static const lightSurfaceBright = Color(0xFFFFF8F0);
  static const lightSurfaceContainerLowest = Color(0xFFFFFFFF);
  static const lightSurfaceContainerLow = Color(0xFFFBF3E5);
  static const lightSurfaceContainer = Color(0xFFF5EDDF);
  static const lightSurfaceContainerHigh = Color(0xFFEFE7DA);
  static const lightSurfaceContainerHighest = Color(0xFFE9E2D4);

  static const lightSurfaceTint5 = Color(0x0D725C0C);
  static const lightSurfaceTint8 = Color(0x12725C0C);
  static const lightSurfaceTint11 = Color(0x1C725C0C);
  static const lightSurfaceTint12 = Color(0x1F725C0C);
  static const lightSurfaceTint14 = Color(0x24725C0C);

  // Dark theme colors
  static const darkSeed = Color(0xFFD8B015);

  static const darkPrimary = MaterialColor(
    0xFFE1C46D,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFFFEFA),
      10: Color(0xFFFFFDF5),
      15: Color(0xFFFEFAE6),
      20: Color(0xFFFEF4CD),
      25: Color(0xFFFDE99B),
      30: Color(0xFFFCDE69),
      35: Color(0xFFFBD337),
      40: Color(0xFFFAC905),
      50: Color(0xFFC8A004),
      60: Color(0xFFAF8C04),
      70: Color(0xFF967803),
      80: Color(0xFF7D6403),
      90: Color(0xFF645002),
      95: Color(0xFF4B3C02),
      98: Color(0xFF322801),
      99: Color(0xFF191401),
      100: Color(0xFF000000),
    },
  );

  static const darkSecondary = MaterialColor(
    0xFFD4C5A1,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFDFDFC),
      10: Color(0xFFFBFAF9),
      15: Color(0xFFF5F4EF),
      20: Color(0xFFECE8DF),
      25: Color(0xFFD8D1C0),
      30: Color(0xFFC5BAA0),
      35: Color(0xFFB1A481),
      40: Color(0xFF9E8D61),
      50: Color(0xFF7E714E),
      60: Color(0xFF6F6344),
      70: Color(0xFF5F543A),
      80: Color(0xFF4F4630),
      90: Color(0xFF3F3827),
      95: Color(0xFF2F2A1D),
      98: Color(0xFF201C13),
      99: Color(0xFF100E0A),
      100: Color(0xFF000000),
    },
  );

  static const darkTertiary = MaterialColor(
    0xFFA9D291,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFCFEFA),
      10: Color(0xFFF9FEF6),
      15: Color(0xFFEFFCE8),
      20: Color(0xFFDFF9D2),
      25: Color(0xFFBFF3A5),
      30: Color(0xFF9FED78),
      35: Color(0xFF7EE74B),
      40: Color(0xFF5EE11E),
      50: Color(0xFF4BB418),
      60: Color(0xFF429E15),
      70: Color(0xFF398712),
      80: Color(0xFF2F710F),
      90: Color(0xFF265A0C),
      95: Color(0xFF1C4409),
      98: Color(0xFF132D06),
      99: Color(0xFF091703),
      100: Color(0xFF000000),
    },
  );

  static const darkError = MaterialColor(
    0xFFFFB3AD,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFFFAFA),
      10: Color(0xFFFFF5F6),
      15: Color(0xFFFEE7E8),
      20: Color(0xFFFDCED1),
      25: Color(0xFFFB9DA2),
      30: Color(0xFFF86D74),
      35: Color(0xFFF63C46),
      40: Color(0xFFF40B17),
      50: Color(0xFFC30913),
      60: Color(0xFFAB0810),
      70: Color(0xFF92070E),
      80: Color(0xFF7A060C),
      90: Color(0xFF620409),
      95: Color(0xFF490307),
      98: Color(0xFF310205),
      99: Color(0xFF180102),
      100: Color(0xFF000000),
    },
  );

  static const darkNeutral = MaterialColor(
    0xFFF2F2F2,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFCFCFC),
      10: Color(0xFFFAFAFA),
      15: Color(0xFFF2F2F2),
      20: Color(0xFFE6E6E6),
      25: Color(0xFFCCCCCC),
      30: Color(0xFFB3B3B3),
      35: Color(0xFF999999),
      40: Color(0xFF808080),
      50: Color(0xFF666666),
      60: Color(0xFF595959),
      70: Color(0xFF4D4D4D),
      80: Color(0xFF404040),
      90: Color(0xFF333333),
      95: Color(0xFF262626),
      98: Color(0xFF1A1A1A),
      99: Color(0xFF0D0D0D),
      100: Color(0xFF000000),
    },
  );

  static const darkNeutralVariant = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFFFBFF),
      10: Color(0xFFFFF8F0),
      15: Color(0xFFF9F0DD),
      20: Color(0xFFEBE2CF),
      25: Color(0xFFCEC6B4),
      30: Color(0xFFB2AA9A),
      35: Color(0xFF979080),
      40: Color(0xFF7D7667),
      50: Color(0xFF645E4F),
      60: Color(0xFF585244),
      70: Color(0xFF4C4639),
      80: Color(0xFF403B2E),
      90: Color(0xFF353024),
      95: Color(0xFF2A251A),
      98: Color(0xFF1F1B10),
      99: Color(0xFF141107),
      100: Color(0xFFFFFFFF),
    },
  );

  static const darkBlue = MaterialColor(
    0xFF006AFF,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFAFCFF),
      10: Color(0xFFF5F9FF),
      15: Color(0xFFE5F0FF),
      20: Color(0xFFCCE1FF),
      25: Color(0xFF99C3FF),
      30: Color(0xFF66A6FF),
      35: Color(0xFF3388FF),
      40: Color(0xFF006AFF),
      50: Color(0xFF0055CC),
      60: Color(0xFF004AB2),
      70: Color(0xFF004099),
      80: Color(0xFF003580),
      90: Color(0xFF002A66),
      95: Color(0xFF00204D),
      98: Color(0xFF001533),
      99: Color(0xFF000B1A),
      100: Color(0xFF000000),
    },
  );

  static const darkCyan = MaterialColor(
    0xFF31CEC8,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFBFEFE),
      10: Color(0xFFF7FDFD),
      15: Color(0xFFEAFAF9),
      20: Color(0xFFD6F5F4),
      25: Color(0xFFADEBE9),
      30: Color(0xFF83E2DE),
      35: Color(0xFF5AD8D3),
      40: Color(0xFF31CEC8),
      50: Color(0xFF27A5A0),
      60: Color(0xFF22908C),
      70: Color(0xFF1D7C78),
      80: Color(0xFF196764),
      90: Color(0xFF145250),
      95: Color(0xFF0F3E3C),
      98: Color(0xFF0A2928),
      99: Color(0xFF051514),
      100: Color(0xFF000000),
    },
  );

  static const darkMagenta = MaterialColor(
    0xFFE9168A,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFFFAFD),
      10: Color(0xFFFEF6FA),
      15: Color(0xFFFDE8F3),
      20: Color(0xFFFBD0E8),
      25: Color(0xFFF6A2D0),
      30: Color(0xFFF273B9),
      35: Color(0xFFED45A1),
      40: Color(0xFFE9168A),
      50: Color(0xFFBA126E),
      60: Color(0xFFA31060),
      70: Color(0xFF8C0D53),
      80: Color(0xFF740B45),
      90: Color(0xFF5D0937),
      95: Color(0xFF460729),
      98: Color(0xFF2F041C),
      99: Color(0xFF17020E),
      100: Color(0xFF000000),
    },
  );

  static const darkOrange = MaterialColor(
    0xFFFA8405,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFFFDFA),
      10: Color(0xFFFFFAF5),
      15: Color(0xFFFEF3E6),
      20: Color(0xFFFEE6CD),
      25: Color(0xFFFDCE9B),
      30: Color(0xFFFCB569),
      35: Color(0xFFFB9C37),
      40: Color(0xFFFA8405),
      50: Color(0xFFC86904),
      60: Color(0xFFAF5C04),
      70: Color(0xFF964F03),
      80: Color(0xFF7D4203),
      90: Color(0xFF643502),
      95: Color(0xFF4B2802),
      98: Color(0xFF321A01),
      99: Color(0xFF190D01),
      100: Color(0xFF000000),
    },
  );

  static const darkPurple = MaterialColor(
    0xFF722ED1,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      5: Color(0xFFFCFBFE),
      10: Color(0xFFF9F7FD),
      15: Color(0xFFF1EAFA),
      20: Color(0xFFE3D5F6),
      25: Color(0xFFE3D5F6),
      30: Color(0xFFAA82E3),
      35: Color(0xFF8E58DA),
      40: Color(0xFF722ED1),
      50: Color(0xFF5B25A7),
      60: Color(0xFF502092),
      70: Color(0xFF441C7D),
      80: Color(0xFF391769),
      90: Color(0xFF2E1254),
      95: Color(0xFF220E3F),
      98: Color(0xFF17092A),
      99: Color(0xFF0B0515),
      100: Color(0xFF000000),
    },
  );

  // Scheme colors
  static const darkSurfaceTint = Color(0xFFE1C46D);
  static const darkOnPrimary = Color(0xFF3C2F00);
  static const darkPrimaryContainer = Color(0xFF574500);
  static const darkOnPrimaryContainer = Color(0xFFFEE086);
  static const darkOnSecondary = Color(0xFF383016);
  static const darkSecondaryContainer = Color(0xFF50462A);
  static const darkOnSecondaryContainer = Color(0xFFF1E1BB);
  static const darkOnTertiary = Color(0xFF163807);
  static const darkTertiaryContainer = Color(0xFF2D4F1D);
  static const darkOnTertiaryContainer = Color(0xFFC4EFAB);
  static const darkOnError = Color(0xFF571E1B);
  static const darkErrorContainer = Color(0xFF73332F);
  static const darkOnErrorContainer = Color(0xFFFFDAD6);
  static const darkBackground = Color(0xFF16130B);
  static const darkOnBackground = Color(0xFFE9E2D4);
  static const darkSurface = Color(0xFF16130B);
  static const darkOnSurface = Color(0xFFE9E2D4);
  static const darkSurfaceVariant = Color(0xFF4C4639);
  static const darkOnSurfaceVariant = Color(0xFFCEC6B4);
  static const darkOutline = Color(0xFF979080);
  static const darkOutlineVariant = Color(0xFF4C4639);
  static const darkShadow = Color(0xFF000000);
  static const darkScrim = Color(0xFF000000);
  static const darkInverseSurface = Color(0xFFE9E2D4);
  static const darkInverseOnSurface = Color(0xFF343027);
  static const darkInversePrimary = Color(0xFF725C0C);
  static const darkPrimaryFixed = Color(0xFFFEE086);
  static const darkOnPrimaryFixed = Color(0xFF231B00);
  static const darkPrimaryFixedDim = Color(0xFFE1C46D);
  static const darkOnPrimaryFixedVariant = Color(0xFF574500);
  static const darkSecondaryFixed = Color(0xFFF1E1BB);
  static const darkOnSecondaryFixed = Color(0xFF221B04);
  static const darkSecondaryFixedDim = Color(0xFFD4C5A1);
  static const darkOnSecondaryFixedVariant = Color(0xFF50462A);
  static const darkTertiaryFixed = Color(0xFFC4EFAB);
  static const darkOnTertiaryFixed = Color(0xFF062100);
  static const darkTertiaryFixedDim = Color(0xFFA9D291);
  static const darkOnTertiaryFixedVariant = Color(0xFF2D4F1D);
  static const darkSurfaceDim = Color(0xFF16130B);
  static const darkSurfaceBright = Color(0xFF3D392F);
  static const darkSurfaceContainerLowest = Color(0xFF110E07);
  static const darkSurfaceContainerLow = Color(0xFF1E1B13);
  static const darkSurfaceContainer = Color(0xFF231F17);
  static const darkSurfaceContainerHigh = Color(0xFF2D2A21);
  static const darkSurfaceContainerHighest = Color(0xFF38342B);

  static const darkSurfaceTint5 = Color(0x0DE1C64D);
  static const darkSurfaceTint8 = Color(0x12E1C64D);
  static const darkSurfaceTint11 = Color(0x1CE1C64D);
  static const darkSurfaceTint12 = Color(0x1FE1C64D);
  static const darkSurfaceTint14 = Color(0x24E1C64D);

  // Model Barrier Color
  static const Color modalBarrier = Color(0x9909101D);
}

extension AppColorExtension on AppColors {
  AppColors of(BuildContext context) {
    return AppColors(context);
  }

  Color get seed {
    Brightness brightness;
    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightSeed;
    }
    return AppColors.darkSeed;
  }

  MaterialColor get palettePrimary {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightPrimary;
    }
    return AppColors.darkPrimary;
  }

  MaterialColor get paletteSecondary {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightSecondary;
    }
    return AppColors.darkSecondary;
  }

  MaterialColor get paletteTertiary {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightTertiary;
    }
    return AppColors.darkTertiary;
  }

  MaterialColor get paletteError {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightError;
    }
    return AppColors.darkError;
  }

  MaterialColor get paletteNeutral {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightNeutral;
    }
    return AppColors.darkNeutral;
  }

  MaterialColor get paletteNeutralVariant {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightNeutralVariant;
    }
    return AppColors.darkNeutralVariant;
  }

  MaterialColor get paletteBlue {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightBlue;
    }
    return AppColors.darkBlue;
  }

  MaterialColor get paletteCyan {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightCyan;
    }
    return AppColors.darkCyan;
  }

  MaterialColor get paletteMagenta {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightMagenta;
    }
    return AppColors.darkMagenta;
  }

  MaterialColor get paletteOrange {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightOrange;
    }
    return AppColors.darkOrange;
  }

  MaterialColor get palettePurple {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightPurple;
    }
    return AppColors.darkPurple;
  }

  Color get surfaceTint5 {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightSurfaceTint5;
    }
    return AppColors.darkSurfaceTint5;
  }

  Color get surfaceTint8 {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightSurfaceTint8;
    }
    return AppColors.darkSurfaceTint8;
  }

  Color get surfaceTint11 {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightSurfaceTint11;
    }
    return AppColors.darkSurfaceTint11;
  }

  Color get surfaceTint12 {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightSurfaceTint12;
    }
    return AppColors.darkSurfaceTint12;
  }

  Color get surfaceTint14 {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightSurfaceTint14;
    }
    return AppColors.darkSurfaceTint14;
  }

  Color get modalBarrier {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return Colors.black.withValues(alpha: 0.5);
    }
    return Colors.black.withValues(alpha: 0.5);
  }

  Color get schemesPrimary {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return AppColors.lightPrimary;
    }
    return AppColors.darkPrimary;
  }

  /// Gradient ///

  LinearGradient get thumbnailOverlay {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF000000).withValues(alpha: 0.32),
          Colors.transparent,
        ],
      );
    }
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF000000).withValues(alpha: 0.32),
        Colors.transparent,
      ],
    );
  }

  LinearGradient get gradientStrong {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFFFBA7B),
          Color(0xFFEE1D1D),
        ],
      );
    }
    return LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xFFFFBA7B),
        Color(0xFFEE1D1D),
      ],
    );
  }

  LinearGradient get gradientStroke {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFFF5DD),
        Color(0xFFFFDD86).withValues(alpha: 0),
      ],
    );
  }

  LinearGradient get gradientWeak {
    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      stops: [0.0, 0.96],
      colors: [
        Color(0xFFFFFCF8),
        Color(0xFFFFF7E2),
      ],
    );
  }

  LinearGradient get becomeApBackground {
    return LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [0.0, 0.5, 1],
      colors: [
        Color(0xFFFFFCF8),
        Color(0xFFFFEDBD),
        Color(0xFFFFFCF9),
      ],
    );
  }

  LinearGradient get gradientButton {
    Brightness brightness;

    brightness = Theme.of(context).brightness;

    if (brightness == Brightness.light) {
      return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.5],
        colors: [
          Color(0xFFF4F4F4),
          Color(0xFFFFFFFF),
        ],
      );
    }
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0, 0.5],
      colors: [
        Color(0xFF505050),
        Color(0xFF2D2D2D),
      ],
    );
  }
}
