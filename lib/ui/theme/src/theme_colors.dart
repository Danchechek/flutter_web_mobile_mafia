part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color backgroundColor;
  final Color blindColor;

  ThemeColors({required this.blindColor, required this.backgroundColor});

  @override
  ThemeExtension<ThemeColors> copyWith(
      {Color? blindColor, Color? backgroundColor}) {
    return ThemeColors(
        blindColor: blindColor ?? this.backgroundColor,
        backgroundColor: backgroundColor ?? this.backgroundColor);
  }

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      blindColor: Color.lerp(blindColor, other.blindColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  static get light => ThemeColors(
    blindColor: AppColors.grayColor20,
    backgroundColor: AppColors.backColorMainLight,
  );

  static get dark => ThemeColors(
    blindColor: AppColors.whiteColor20,
    backgroundColor: AppColors.backColorMainDark,
  );
}
