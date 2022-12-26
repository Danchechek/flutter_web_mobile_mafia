part of '../theme.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'CormorantUnicase',
  elevatedButtonTheme:
      ElevatedButtonThemeData(style: AppButtonStyle.buttonStyle),
  textTheme: createTextTheme(),
  extensions: <ThemeExtension<dynamic>>[
    DefaultColors.colors,
    ThemeColors.light,
  ],
);
