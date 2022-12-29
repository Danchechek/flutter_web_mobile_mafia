part of '../theme.dart';

class DefaultColors extends ThemeExtension<DefaultColors> {
  final Color backgroundAuthColor;
  final Color bordoBorder;
  final Color loseColor;
  final Color winColor;
  final Color bestColor;
  final Color secondBestColor;
  final Color thirdBestColor;

  DefaultColors(
      {required this.bestColor,
      required this.secondBestColor,
      required this.thirdBestColor,
      required this.loseColor,
      required this.winColor,
      required this.bordoBorder,
      required this.backgroundAuthColor});

  @override
  ThemeExtension<DefaultColors> copyWith(
      {Color? backgroundAuthColor,
      Color? bordoBorder,
      Color? loseColor,
      Color? winColor,
      Color? bestColor,
      Color? secondBestColor,
      Color? thirdBestColor}) {
    return DefaultColors(
        bestColor: bestColor ?? this.bestColor,
        secondBestColor: secondBestColor ?? this.secondBestColor,
        thirdBestColor: thirdBestColor ?? this.thirdBestColor,
        loseColor: loseColor ?? this.loseColor,
        winColor: winColor ?? this.winColor,
        bordoBorder: bordoBorder ?? this.bordoBorder,
        backgroundAuthColor: backgroundAuthColor ?? this.backgroundAuthColor);
  }

  @override
  ThemeExtension<DefaultColors> lerp(ThemeExtension? other, double t) {
    if (other is! DefaultColors) {
      return this;
    }
    return DefaultColors(
      bestColor: Color.lerp(bestColor, other.bestColor, t)!,
      secondBestColor: Color.lerp(secondBestColor, other.secondBestColor, t)!,
      thirdBestColor: Color.lerp(thirdBestColor, other.thirdBestColor, t)!,
      winColor: Color.lerp(winColor, other.winColor, t)!,
      bordoBorder: Color.lerp(bordoBorder, other.bordoBorder, t)!,
      backgroundAuthColor:
          Color.lerp(backgroundAuthColor, other.backgroundAuthColor, t)!,
      loseColor: Color.lerp(loseColor, other.loseColor, t)!,
    );
  }

  static get colors => DefaultColors(
       bestColor: AppColors.bestColor,
   secondBestColor: AppColors.secondBestColor,
  thirdBestColor: AppColors.thirdBestColor,
        loseColor: AppColors.loseColor,
        winColor: AppColors.winColor,
        bordoBorder: AppColors.bordoColor,
        backgroundAuthColor: AppColors.backgroundAuthColor,
      );
}
