import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/club/widgets/rules/row_rules.dart';

import '../../../../../utils/paths.dart';
import '../../../../globalwidgets/back_widget.dart';
import '../../../../navigation/main_navigation.dart';
import '../../widgets/calendar/vertical_calendar.dart';
import '../../../../globalwidgets/drawer_button.dart';
import '../../widgets/list_leaders.dart';
import '../../widgets/logo_club.dart';
import '../../../../globalwidgets/open_all_button.dart';
import '../../widgets/rules/column_rules.dart';
import '../../widgets/scheduled_meeting.dart';
import '../../widgets/statistic_roles.dart';
import '../../widgets/statistics_line.dart';

class UpTo182 extends StatelessWidget {
  final int countCalendar;
  final bool visibleEvent;

  const UpTo182(
      {Key? key, required this.countCalendar, required this.visibleEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Padding(
        padding: EdgeInsets.only(top: mediaQuery.padding.top + 16, left: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 33, height: 20, child: BackWidget()),
            Flexible(child: Container()),
            const LogoClub(path: AppPaths.laNostra),
            const SizedBox(
              width: 33,
            ),
            Flexible(child: Container()),
          ],
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          'La nostra famiglia',
          style: theme.textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      ScheduledMeeting(
        visible: visibleEvent,
      ),
      countCalendar > 0
          ? Text(
              'Лидеры',
              style: theme.textTheme.bodyText1,
              textAlign: TextAlign.center,
            )
          : const SizedBox(),
      SizedBox(
          width: 240,
          child: ListLeaders(
            visible: countCalendar != 0,
            countItems: 10,
          )),
      countCalendar > 0
          ? Column(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: StatisticRole(
                    mafiaPercent: '3',
                    peacefulPercent: '2',
                    greyPercent: '2',
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(width: 400, child: StatisticsLine())),
              ],
            )
          : const SizedBox(),
      VerticalCalendar(
        value: countCalendar,
      ),
      countCalendar == 5
          ? Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: 275,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppTextButton(
                        text: 'Открыть всё',
                        function: () {
                          Navigator.of(context).pushNamed(
                            MainNavigationRouteNames.historyGames,
                          );
                        })
                  ],
                ),
              ),
            )
          : const SizedBox(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          'Роли и разбаловки в этом клубе',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyLarge,
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ColumnRoles()),
      const SizedBox(
        height: 32,
      ),
    ]);
  }
}
