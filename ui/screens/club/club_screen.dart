import 'package:flutter/material.dart';
import '../../globalwidgets/drawer.dart';
import '../../theme/theme.dart';
import 'adaptive/over_1216/with_stat_over_1216.dart';
import 'adaptive/over_1216/without_stat_without_event_over_1216.dart';
import 'adaptive/up_to_1216/with_stat.dart';
import 'adaptive/up_to_1216/without_stat_with_event.dart';
import 'adaptive/up_to_1216/without_stat_without_event.dart';
import 'adaptive/up_to_820/up_to_182.dart';

class ClubScreen extends StatelessWidget {
  final String clubName;


  const ClubScreen({Key? key, required this.clubName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    ThemeColors extetnsion = theme.extension<ThemeColors>()!;
    var mediaQuery = MediaQuery.of(context);
    const int countCalendar = 5;
    const bool visibleEvent = true;

    return Scaffold(
      backgroundColor: extetnsion.backgroundColor,
      drawer: Padding(
        padding: EdgeInsets.only(top: mediaQuery.padding.top),
        child: const AppDrawer(),
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 832) {
              return const UpTo182(
                countCalendar: countCalendar,
                visibleEvent: visibleEvent,
              );
            }
            if (constraints.maxWidth < 1233) {
              return Padding(
                padding: EdgeInsets.only(
                    top: mediaQuery.padding.top + 16, left: 16, right: 16),
                child: Column(mainAxisSize: MainAxisSize.min, children: const [
                  countCalendar == 0 && !visibleEvent
                      ? WithoutStatWithoutEventUpTo1216()
                      : countCalendar == 0 && visibleEvent
                          ? WithoutStatWithEventUpTo1216()
                          : WithStatUpTo1216(
                              countCalendar: countCalendar,
                              visibleEvent: visibleEvent,
                            ),
                ]),
              );
            }

            return Padding(
              padding: EdgeInsets.only(
                  top: mediaQuery.padding.top + 16, left: 16, right: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  countCalendar == 0 && !visibleEvent
                      ? WithoutStatWithoutEventOver1216()
                      : countCalendar == 0 && visibleEvent
                          ? WithoutStatWithEventUpTo1216()
                          : WithStatOver1216(
                              countCalendar: countCalendar,
                              visibleEvent: visibleEvent,
                            )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
