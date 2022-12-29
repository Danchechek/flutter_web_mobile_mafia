import 'package:flutter/material.dart';

import '../theme/theme.dart';

class DrawerLogo extends StatelessWidget {
  const DrawerLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    DefaultColors extetnsion = theme.extension<DefaultColors>()!;
    return Column(
      children: [
        Container(
          height: 4,
          width: 33,
          decoration: BoxDecoration(
              color: extetnsion.bordoBorder,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 4,
          width: 33,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 4,
          width: 33,
          decoration: BoxDecoration(
              color: extetnsion.bordoBorder,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
        ),
      ],
    );
  }
}
