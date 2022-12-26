import 'package:flutter/material.dart';

import '../../utils/paths.dart';
import '../theme/theme.dart';
import 'open_all_button.dart';

class AnimatedTopList extends StatefulWidget {
  final List<Widget> widgets;
  final bool bests;

  const AnimatedTopList({Key? key, required this.widgets, required this.bests})
      : super(key: key);

  @override
  State<AnimatedTopList> createState() => _ListLeadersState();
}

class _ListLeadersState extends State<AnimatedTopList> {
  bool open = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    DefaultColors defaultColors = theme.extension<DefaultColors>()!;

    var themExtension = Theme.of(context).extension<ThemeColors>()!;
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      AnimatedContainer(
        curve: Curves.ease,
        duration: const Duration(milliseconds: 1000),
        height:
            open ? (425 + (widget.widgets.length - 5) * 88).toDouble() : 425,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: widget.widgets.length,
              itemBuilder: (BuildContext context, int index) {
                var backColor = !widget.bests
                    ? themExtension.blindColor
                    : defaultColors.bestColor;

                if (!widget.bests) {
                  switch (index) {
                    case 0:
                      backColor = defaultColors.bestColor;
                      break;
                    case 1:
                      backColor = defaultColors.secondBestColor;
                      break;
                    case 2:
                      backColor = defaultColors.thirdBestColor;
                  }
                }

                return Container(
                  margin: index != 0
                      ? const EdgeInsets.only(top: 16)
                      : EdgeInsets.zero,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                      color: backColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: widget.widgets[index],
                );
              }),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Row(children: [
        Flexible(child: Container()),
        AppTextButton(
          text: !open ? 'Открыть всё' : 'Скрыть',
          function: () {
            setState(() {
              open = !open;
            });
          },
        ),
      ]),
      const SizedBox(
        height: 16,
      ),
    ]);
  }
}
