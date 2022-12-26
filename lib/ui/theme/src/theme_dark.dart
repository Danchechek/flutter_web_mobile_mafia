part of '../theme.dart';

ThemeData darkTheme = ThemeData(
    fontFamily: 'CormorantUnicase',
    elevatedButtonTheme:
    ElevatedButtonThemeData(style: AppButtonStyle.buttonStyle),
    textTheme: createTextTheme(),
    extensions: <ThemeExtension<dynamic>>[
      DefaultColors.colors,
      ThemeColors.dark,
    ],
  );