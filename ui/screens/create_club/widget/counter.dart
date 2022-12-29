import 'package:flutter/material.dart';
import 'package:mafia_project/utils/paths.dart';
import 'dart:math' as math;

import '../../../theme/theme.dart';

class Counter extends StatelessWidget {
  final bool? changeable;

  const Counter({Key? key, this.changeable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        changeable == true ? getMathAction(false, context) : const SizedBox(),
        const SizedBox(
          width: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            '6',
            style: theme.textTheme.titleLarge!.copyWith(fontSize: 30),
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        changeable == true ? getMathAction(true, context) : const SizedBox(),
      ],
    );
  }
}

Widget getMathAction(bool plus, BuildContext context) {
  var theme = Theme.of(context);
  ThemeColors extetnsion = theme.extension<ThemeColors>()!;
  String path = plus ? AppPaths.plusIcon : AppPaths.minusIcon;
  return Stack(children: [
    Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: extetnsion.blindColor,
        borderRadius: BorderRadius.circular(50),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 5.3, top: 5.2),
      child: SizedBox(width: 10, height: 10, child: Image.asset(path)),
    ),
  ]);
}

Widget getRemoveAddIcon(BuildContext context, bool add) {
  var theme = Theme.of(context);
  double angle = add ? 0 : math.pi / 4;
  ThemeColors extetnsion = theme.extension<ThemeColors>()!;
  return Stack(children: [
    Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        color: extetnsion.blindColor,
        borderRadius: BorderRadius.circular(50),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 5.3, top: 5.2),
      child: SizedBox(
          width: 12,
          height: 12,
          child: Transform.rotate(
              angle: angle, child: Image.asset(AppPaths.plusIcon))),
    ),
  ]);
}
