import 'package:flutter/material.dart';

class StatisticRole extends StatelessWidget {
  final String mafiaPercent;
  final String peacefulPercent;
  final String greyPercent;

  const StatisticRole(
      {Key? key,
      required this.mafiaPercent,
      required this.peacefulPercent,
      required this.greyPercent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Статистика этого клуба',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyText1,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Черные - $mafiaPercent%',
          style: theme.textTheme.headline5,
        ),
        Text(
          'Красные - $peacefulPercent%',
          style: theme.textTheme.headline5,
        ),
        Text(
          'Серые - $greyPercent%',
          style: theme.textTheme.headline5,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
