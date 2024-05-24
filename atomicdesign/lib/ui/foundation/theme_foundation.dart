import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:atomicdesign/ui/foundation/radius_foundation.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

final basicLightThemeFoundation = ThemeData(
  brightness: Brightness.light,
  colorSchemeSeed: ColorsFoundation.basicLightThemeSchemaSeed,
  textButtonTheme: textButtonWithBackgroundTheme,
);

final basicDarkThemeFoundation = ThemeData(
  brightness: Brightness.dark,
  colorSchemeSeed: ColorsFoundation.basicLightThemeSchemaSeed,
  textButtonTheme: textButtonWithBackgroundTheme,
);

final textButtonWithBackgroundTheme = TextButtonThemeData(
  style: ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all(ColorsFoundation.basicLightButtonBackground),
    textStyle:
        MaterialStateProperty.all(const TextStyle(fontWeight: FontWeight.bold)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RadiousFoundation.basicButton))),
    minimumSize: MaterialStateProperty.all(const Size(
        SizeFoundation.basicTextButtonWidth,
        SizeFoundation.basicTextButtonHeight)),
    foregroundColor:
        MaterialStateProperty.all(ColorsFoundation.basicLightButtonText),
  ),
);

final textButtonWithoutBackgroundTheme = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.all(
      const TextStyle(fontWeight: FontWeight.normal),
    ),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RadiousFoundation.basicButton))),
    minimumSize: MaterialStateProperty.all(const Size(
        SizeFoundation.basicTextButtonWidth,
        SizeFoundation.basicTextButtonHeight)),
    foregroundColor:
        MaterialStateProperty.all(ColorsFoundation.basicWoButtonText),
  ),
);

final textButtonWithoutBackgroundShortTheme = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.all(
      const TextStyle(fontWeight: FontWeight.normal),
    ),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RadiousFoundation.basicButton))),
    foregroundColor:
        MaterialStateProperty.all(ColorsFoundation.basicWoButtonText),
  ),
);

