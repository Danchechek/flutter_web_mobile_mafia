import 'package:flutter/material.dart';
import 'package:mafia_project/ui/globalwidgets/open_all_button.dart';
import 'package:mafia_project/ui/theme/theme.dart';

class ScheduledMeeting extends StatelessWidget {
  final bool visible;

  const ScheduledMeeting({Key? key, required this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!visible) {
      return const SizedBox();
    }
    var theme = Theme.of(context);
    var themeText = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(187, 39, 73, 0.6),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              Text(
                'Запланированная встреча',
                style: themeText.headline6,
                textAlign: TextAlign.center,
              ),
              Text(
                '20.09.2022',
                style: themeText.headline6,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Количество свободных мест',
                style: themeText.headline6,
                textAlign: TextAlign.center,
              ),
              Text(
                '8/18',
                style: themeText.headline6,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          width: 350,
          child: Row(children: [
            Flexible(child: Container()),
            AppTextButton(text: 'Записаться', function: () {}),
          ]),
        ),
        const SizedBox(
          height: 16,
        ),
      ]),
    );
  }
}
