import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/club/widgets/list_leaders.dart';
import 'package:mafia_project/ui/globalwidgets/open_all_button.dart';
import 'package:mafia_project/ui/screens/club/widgets/rules/row_rules.dart';
import 'package:mafia_project/ui/screens/club/widgets/scheduled_meeting.dart';
import 'package:mafia_project/ui/screens/club/widgets/statistic_roles.dart';
import 'package:mafia_project/ui/screens/club/widgets/statistics_line.dart';

import '../../../../../utils/paths.dart';
import '../../../../globalwidgets/back_widget.dart';
import '../../../../navigation/main_navigation.dart';
import '../../widgets/calendar/horizontal_calendar.dart';
import '../../widgets/logo_club.dart';

class WithStatOver1216 extends StatelessWidget {
  final bool visibleEvent;
  final int countCalendar;

  const WithStatOver1216(
      {Key? key, required this.visibleEvent, required this.countCalendar})
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
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Лидеры',
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 240,
                  child: ListLeaders(
                    visible: true,
                    countItems: 10,
                  ),
                ),
              ],
            ),
            Flexible(
              child: Container(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HorizontalCalendar(
                  value: countCalendar,
                ),
                const SizedBox(
                  height: 16,
                ),
                countCalendar == 5
                    ? SizedBox(
                        width: 818 * countCalendar / 5,
                        child: Row(
                          children: [
                            Flexible(child: Container()),
                            AppTextButton(text: 'Открыть всё', function: () {
                              Navigator.of(context).pushNamed(
                                  MainNavigationRouteNames.historyGames,);
                            }),
                          ],
                        ),
                      )
                    : const SizedBox(
                        height: 32,
                      ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 800,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScheduledMeeting(visible: visibleEvent),
                      visibleEvent
                          ? const SizedBox(
                              width: 22,
                            )
                          : const SizedBox(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          StatisticRole(
                              mafiaPercent: '23',
                              peacefulPercent: '4',
                              greyPercent: '2'),
                          SizedBox(width: 395, child: StatisticsLine()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const SizedBox(width: 800, child: RowRules()),
              ],
            ),
            Flexible(child: Container()),
          ],
        ),
      ],
    );
  }
}
