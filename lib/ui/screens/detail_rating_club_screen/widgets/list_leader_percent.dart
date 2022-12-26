import 'package:flutter/material.dart';

import '../../../../utils/paths.dart';
import '../../../globalwidgets/animated_list.dart';
import '../../../theme/theme.dart';

class ListLeadersPercent extends StatelessWidget {
  final bool visible;
  final int countItems;

  const ListLeadersPercent(
      {Key? key, required this.visible, required this.countItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    for(int i = 0; i < countItems; i++) {
      widgets.add(_getWidget(context));
    }

    return AnimatedTopList(widgets: widgets, bests: false);
  }
}

Widget _getWidget(BuildContext context){
  final theme = Theme.of(context);
  final colors = theme.extension<DefaultColors>()!;
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: colors.bordoBorder,
          borderRadius:
          const BorderRadius.all(Radius.circular(100)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 1,
                  image: AssetImage(AppPaths.vika),
                )),
          ),
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      SizedBox(
        height: 49,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '55.5%',
              style: theme.textTheme.bodyLarge,
            ),
            Flexible(child: Container()),
            Text(
              '@OOOOOOOOOO',
              style: theme.textTheme.bodyText2,
            )
          ],
        ),
      )
    ],
  );
}
