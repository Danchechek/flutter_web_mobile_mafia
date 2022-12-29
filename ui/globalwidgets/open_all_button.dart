import 'package:flutter/material.dart';

import '../theme/src/app_button_style.dart';
import '../theme/theme.dart';

class AppTextButton extends StatelessWidget {
  final text;
  final Function() function;

  const AppTextButton({Key? key, required this.text, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var themeText = theme.textTheme;
    return Container(
        padding: const EdgeInsets.all(2),
        height: 35,
        decoration: BoxDecoration(
            color: theme.extension<DefaultColors>()!.bordoBorder,
            borderRadius: const BorderRadius.all(Radius.circular(23))),
        child: Container(
          decoration: BoxDecoration(
              color: theme.extension<ThemeColors>()!.backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ElevatedButton(
              style: AppButtonStyle.coverStyle,
              onPressed: function,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 3),
                child: Text(
                  text,
                  style: themeText.subtitle1,
                ),
              ),
            ),
          ),
        ));
  }
}
