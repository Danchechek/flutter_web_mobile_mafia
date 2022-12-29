import 'package:flutter/material.dart';

import '../../../../utils/paths.dart';
import '../../../../utils/utils.dart';
import '../../../globalwidgets/animated_list.dart';
import '../../../theme/theme.dart';

class ListRolesLeadersPercent extends StatelessWidget {
  final bool visible;
  final int countItems;

  const ListRolesLeadersPercent(
      {Key? key, required this.visible, required this.countItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    for (int i = 0; i < countItems; i++) {
      widgets.add(_getWidget(context));
    }

    return AnimatedTopList(widgets: widgets, bests: false);
  }
}

Widget _getWidget(BuildContext context) {
  final theme = Theme.of(context);
  return SizedBox(
    height: 52,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          getShortString('Обычный мирный', 9),
          style: theme.textTheme.headline6,
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          '55.5%',
          style: theme.textTheme.bodyLarge,
        ),
      ],
    ),
  );
}
