import 'package:flutter/material.dart';

import '../theme/theme.dart';

class TextCard extends StatelessWidget {
  final String text;
  final double width;
  const TextCard({Key? key, required this.text, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    ThemeColors extetnsion = theme.extension<ThemeColors>()!;
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          color: extetnsion.blindColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: theme.textTheme.headline6,
      ),
    );
  }
}
