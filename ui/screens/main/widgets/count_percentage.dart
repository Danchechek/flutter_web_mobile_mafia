import 'package:flutter/material.dart';
import 'package:mafia_project/ui/theme/theme.dart';

import '../../../theme/colors.dart';

class CountPercentage extends StatelessWidget {
  const CountPercentage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: theme.extension<ThemeColors>()!.blindColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: mediaQuery.size.width >= 452 ? const RowCountPercentage() : const ColumnCountPercentage(),
    );
  }
}

class RowCountPercentage extends StatelessWidget {
  const RowCountPercentage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Flexible(child: Container()),
          Column(
            children: [
              Text(
                'Количество игр',
                style: theme.textTheme.headline5,
              ),
              Text(
                '666',
                style: theme.textTheme.headline5,
              ),
            ],
          ),
          Flexible(child: Container()),
          const SizedBox(
            width: 32,
          ),
          Flexible(child: Container()),
          Column(
            children: [
              Text(
                'Процент побед',
                style: theme.textTheme.headline6,
              ),
              Text(
                '36%',
                style: theme.textTheme.headline5,
              ),
            ],
          ),
          Flexible(child: Container()),
        ],
      ),
    );
  }
}


class ColumnCountPercentage extends StatelessWidget {
  const ColumnCountPercentage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                'Количество игр',
                style: theme.textTheme.headline6,
              ),
              Text(
                '666',
                style: theme.textTheme.headline5,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Column(
            children: [
              Text(
                'Процент побед',
                style: theme.textTheme.headline6,
              ),
              Text(
                '36%',
                style: theme.textTheme.headline5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
