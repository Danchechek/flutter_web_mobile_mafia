import 'package:flutter/material.dart';

import '../theme/src/app_button_style.dart';
import '../theme/theme.dart';

class ShowDialog extends StatelessWidget {
  final String text;

  const ShowDialog({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ThemeColors extetnsion = theme.extension<ThemeColors>()!;
    double width = MediaQuery.of(context).size.width;

    return ElevatedButton(
      style: AppButtonStyle.iconStyle,
      onPressed: () {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              titlePadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              backgroundColor: extetnsion.backgroundColor,
              title: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 280.0),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headline4,
                ),
              ),
            );
          },
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: 24,
        height: 24,
        padding: const EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: extetnsion.blindColor),
        child: Text(
          '?',
          textAlign: TextAlign.center,
          style: theme.textTheme.headline4,
        ),
      ),
    );
  }
}
