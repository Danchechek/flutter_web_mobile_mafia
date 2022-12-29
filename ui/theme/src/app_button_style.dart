import 'package:flutter/material.dart';

import '../colors.dart';

abstract class AppButtonStyle {
  static final buttonStyle = ButtonStyle(
    padding: MaterialStateProperty.resolveWith((states) {
      return const EdgeInsets.symmetric(horizontal: 0, vertical: 0);
    }),
    shape: MaterialStateProperty.resolveWith((states) {
      return const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      );
    }),
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      return AppColors.whiteColorButton;
    }),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return AppColors.tapButtonColor;
        }
        if (states.contains(MaterialState.hovered)) {
          return AppColors.hoverButtonColor;
        }
        return AppColors.grayColorText;
      },
    ),
  );

  static final iconStyle = ButtonStyle(

    padding: MaterialStateProperty.resolveWith((states) {
      return const EdgeInsets.symmetric(horizontal: 0, vertical: 0);
    }),
    shape: MaterialStateProperty.resolveWith((states) {
      return const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0)),
      );
    }),
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      return Colors.transparent;
    }),
    shadowColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      return Colors.transparent;
    }),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.transparent;
        }
        if (states.contains(MaterialState.pressed)) {
          return Colors.transparent;
        }
        return Colors.transparent;
      },
    ),
  );

  static final coverStyle = ButtonStyle(
    padding: MaterialStateProperty.resolveWith((states) {
      return const EdgeInsets.symmetric(horizontal: 0, vertical: 0);
    }),
    shape: MaterialStateProperty.resolveWith((states) {
      return const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      );
    }),
    shadowColor: MaterialStateProperty.resolveWith((states) {
      return Colors.transparent;
    }),
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      return Colors.transparent;
    }),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return AppColors.tapButtonColor;
        }
        if (states.contains(MaterialState.hovered)) {
          return Colors.transparent;
        }
        return Colors.transparent;
      },
    ),
  );
}
