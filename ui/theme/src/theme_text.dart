part of '../theme.dart';

const subtitle1 = TextStyle(fontSize: 20);
const subtitle2 = TextStyle(
  fontSize: 16,
);

const bodyText2 = TextStyle(
  fontSize: 12,
);

const headline1 = TextStyle(
  color: Colors.black,
  fontSize: 20,
);

const headline2 = TextStyle(
    decoration: TextDecoration.none,
    color: AppColors.hintTextColor,
    fontSize: 20);

const headline3 = TextStyle(
    decoration: TextDecoration.none,
    color: AppColors.hintTextColor,
    fontSize: 20);

const headline4 = TextStyle(
    decoration: TextDecoration.none, color: Colors.black, fontSize: 20);

const headline5 = TextStyle(fontSize: 26);

const headline6 = TextStyle(fontSize: 24);

const bodyLarge = TextStyle(
    fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.bordoColor);

const titleMedium =
    TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 5);

const bodyText1 = TextStyle(

  fontSize: 25,
  letterSpacing: 5,
  fontWeight: FontWeight.bold,
);

TextTheme createTextTheme() {
  return const TextTheme(
    headline1: headline1,
    headline2: headline2,
    headline3: headline3,
    headline4: headline4,
    headline5: headline5,
    headline6: headline6,
    subtitle1: subtitle1,
    bodyText1: bodyText1,
    bodyText2: bodyText2,
    labelMedium: titleMedium,
    subtitle2: subtitle2,
  );
}
