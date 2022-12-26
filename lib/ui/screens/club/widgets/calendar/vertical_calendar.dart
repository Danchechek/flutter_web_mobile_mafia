import 'package:flutter/material.dart';
import 'package:mafia_project/ui/theme/theme.dart';
import 'package:mafia_project/utils/paths.dart';

import '../../../../../utils/utils.dart';

class VerticalCalendar extends StatelessWidget {
  final int value;

  const VerticalCalendar({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (value == 0) {
      return const SizedBox();
    }
    var themeColors = Theme.of(context).extension<ThemeColors>()!;

    List<Widget>? columWidgets = getCalendarWidgets(value, context, true);
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          'История встречь',
          style: theme.textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: 805 * value / 5,
          width: 272,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
              color: themeColors.blindColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: columWidgets!,
          ),
        ),
      ],
    );
  }
}

Widget _horizontalSpan() {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Colors.black,
    ),
    width: 160,
    height: 3,
  );
}

Widget _verticalSpan() {
  return Container(
    margin: const EdgeInsets.only(right: 8),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Colors.black,
    ),
    width: 3,
    height: 100,
  );
}

List<Widget>? getCalendarWidgets(
    int count, BuildContext context, bool horizontal) {
  List<Widget>? widgets = [];

  Widget span = horizontal ? _horizontalSpan() : _verticalSpan();

  for (int i = 0; i < count; i++) {
    if (i + 1 == count) {
      widgets.add(_calendarBox('20.09.2022', MafiaRole.peacefulWoman, context));
    } else {
      widgets.add(_calendarBox('20.09.2022', MafiaRole.peacefulWoman, context));
      widgets.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 16), child: span));
    }
  }

  return widgets;
}

Widget _calendarBox(String date, MafiaRole? mafiaRole, BuildContext context) {
  if (mafiaRole == null) {
    return Container();
  }
  var path = '';
  var nameRole = '';
  var dataCalendar = getCalendarData(mafiaRole);
  path = dataCalendar.path;
  nameRole = dataCalendar.nameRole;

  return SizedBox(
    width: 150,
    child: Column(children: [
      Row(mainAxisSize: MainAxisSize.min, children: [
        Text(
          date,
          style: Theme.of(context).textTheme.headline6,
        ),
        Flexible(child: Container()),
      ]),
      Container(
        width: 66,
        height: 66,
        decoration: BoxDecoration(
            image: DecorationImage(
          opacity: 1,
          image: AssetImage(path),
        )),
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: Container()),
          Text(
            nameRole,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Flexible(child: Container()),
        ],
      ),
    ]),
  );
}
