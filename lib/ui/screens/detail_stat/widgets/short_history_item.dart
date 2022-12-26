import 'package:flutter/material.dart';
import 'package:mafia_project/ui/globalwidgets/open_all_button.dart';

import '../../../../utils/paths.dart';
import '../../../theme/theme.dart';

class ShortHistoryItem extends StatelessWidget {
  final String pathRole;
  final int countItem;

  const ShortHistoryItem(
      {Key? key, required this.pathRole, required this.countItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    DefaultColors defaultColors = theme.extension<DefaultColors>()!;

    if (countItem == 0) {
      return const SizedBox();
    }

    List<Widget> circles = [];
    for (int i = 0; i < countItem; i++) {
      circles.add(Circle(
          color: i % 2 == 0
              ? defaultColors.loseColor.withOpacity(0.8)
              : defaultColors.winColor.withOpacity(0.8)));
      if (i != countItem - 1) {
        circles.add(const SizedBox(
          width: 4,
        ));
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 45,
          height: 45,
          child: Image.asset(pathRole),
        ),
        const SizedBox(
          width: 16,
        ),
        Row(
          children: circles,
        ),
        Flexible(child: Container()),
      ],
    );
  }
}

class Circle extends StatelessWidget {
  final Color color;

  const Circle({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
    );
  }
}
