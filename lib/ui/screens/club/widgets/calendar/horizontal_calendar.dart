import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/club/widgets/calendar/vertical_calendar.dart';

import '../../../../theme/theme.dart';

class HorizontalCalendar extends StatelessWidget {
  final int value;
  const HorizontalCalendar({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (value == 0) {
      return const SizedBox();
    }
    var themeColors = Theme.of(context).extension<ThemeColors>()!;

    List<Widget>? widgets =  getCalendarWidgets(value, context, false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'История встречь',
          style: theme.textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(

          height: 16,
        ),
        Container(
          width: 820 * value / 5,
          height: 161,
          padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
          decoration: BoxDecoration(
              color: themeColors.blindColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: widgets!,
          ),
        ),
      ],
    );
  }
}
