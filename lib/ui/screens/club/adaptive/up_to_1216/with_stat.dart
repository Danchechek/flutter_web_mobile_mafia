import 'package:flutter/material.dart';
import 'package:mafia_project/ui/globalwidgets/open_all_button.dart';

import '../../../../../utils/paths.dart';
import '../../../../globalwidgets/back_widget.dart';
import '../../../../navigation/main_navigation.dart';
import '../../widgets/calendar/vertical_calendar.dart';
import '../../widgets/list_leaders.dart';
import '../../widgets/logo_club.dart';
import '../../widgets/rules/column_rules.dart';
import '../../widgets/rules/row_rules.dart';
import '../../widgets/scheduled_meeting.dart';
import '../../widgets/statistic_roles.dart';
import '../../widgets/statistics_line.dart';

class WithStatUpTo1216 extends StatelessWidget {
  final int countCalendar;
  final bool visibleEvent;

  const WithStatUpTo1216(
      {Key? key, required this.countCalendar, required this.visibleEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackWidget(),
            Flexible(child: Container()),
            Column(
              children: [
                const LogoClub(path: AppPaths.laNostra),
                Text(
                  'La nostra famiglia',
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                VerticalCalendar(value: countCalendar),
                countCalendar == 5
                    ? Container(
                        margin: const EdgeInsets.only(top: 8),
                        width: 275,
                        child: Row(
                          children: [
                            Flexible(child: Container()),
                            AppTextButton(
                                text: 'Открыть всё',
                                function: () {
                                  Navigator.of(context).pushNamed(
                                    MainNavigationRouteNames.historyGames,
                                  );
                                })
                          ],
                        ),
                      )
                    : const SizedBox()
              ],
            ),
            Flexible(child: Container()),
            Column(
              children: [
                visibleEvent
                    ? ScheduledMeeting(
                        visible: visibleEvent,
                      )
                    : const SizedBox(),
                Text(
                  'Лидеры',
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                    width: 240,
                    child: ListLeaders(
                      visible: countCalendar != 0,
                      countItems: 10,
                    )),
                const StatisticRole(
                    mafiaPercent: '4', peacefulPercent: '4', greyPercent: '4'),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(width: 400, child: StatisticsLine())),
                const SizedBox(
                  height: 32,
                ),
                !visibleEvent
                    ? Column(
                        children: [
                          SizedBox(
                            width: 400,
                            child: Text(
                              'Роли и разбаловки в этом клубе',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const ColumnRoles()
                        ],
                      )
                    : const SizedBox(),
              ],
            ),
            Flexible(child: Container()),
          ],
        ),
        visibleEvent
            ? Column(
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Роли и разбаловки в этом клубе',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const RowRules(),
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
