import 'package:flutter/material.dart';
import '../../../data/calendar.dart';
import '../../../utils/utils.dart';
import '../../globalwidgets/back_widget.dart';
import '../../theme/theme.dart';

class HistoryGames extends StatelessWidget {
  final List<DateRoleWin> calendarDataList;

  const HistoryGames({Key? key, required this.calendarDataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    ThemeColors extetnsion = theme.extension<ThemeColors>()!;
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: extetnsion.backgroundColor,
      body: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 284),
        child: Padding(
          padding: EdgeInsets.only(
              top: mediaQuery.padding.top + 8, left: 16, right: 16),
          child: Stack(children: [
            const BackWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 54),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 200),
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return GridView.builder(
                      itemCount: calendarDataList.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 150,
                              mainAxisSpacing: 32,
                              crossAxisSpacing: 0,
                              crossAxisCount: constraints.maxWidth~/232),
                      itemBuilder: (context, int index) {
                        var role = calendarDataList[index].role;
                        var date = calendarDataList[index].date;
                        var win = calendarDataList[index].win;
                        return SizedBox(
                          width: 232,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              SizedBox(
                                  width: 200,
                                  child: _getCard(role, date, win, context)),
                              const SizedBox(
                                width: 16,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget _getCard(MafiaRole role, String date, bool? win, BuildContext context) {
  var theme = Theme.of(context);
  ThemeColors extetnsionColors = theme.extension<ThemeColors>()!;
  DefaultColors defaultColors = theme.extension<DefaultColors>()!;
  var color = extetnsionColors.blindColor;
  String path;
  String nameRole;
  path = getCalendarData(role).path;
  nameRole = getCalendarData(role).nameRole;

  if (win == true) {
    color = defaultColors.winColor;
  } else if (win == false) {
    color = defaultColors.loseColor.withOpacity(0.3);
  }
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          date,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(
          width: 69,
          height: 69,
          child: Image.asset(path),
        ),
        Text(
          nameRole,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    ),
  );
}
