import 'package:flutter/material.dart';

import '../../../../utils/paths.dart';
import '../../../../utils/utils.dart';
import '../../../globalwidgets/animated_list.dart';
import '../../../theme/theme.dart';

class ListBestManRole extends StatelessWidget {
  final bool visible;
  final int countItems;

  const ListBestManRole(
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
  final colors = theme.extension<DefaultColors>()!;
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: colors.bordoBorder,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
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
        width: 8,
      ),
      SizedBox(
        height: 49,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getShortString('ЛунатикЛунатик', 8),
              style: theme.textTheme.headline4,
            ),
            Flexible(child: Container()),
            Text(
              '@OOOOOOOOOO',
              style: theme.textTheme.bodyText2,
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8),
        child: Text(
          '59.9%',

          style: theme.textTheme.bodyLarge,
        ),
      ),
    ],
  );
}




