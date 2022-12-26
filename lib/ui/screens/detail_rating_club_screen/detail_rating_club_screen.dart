import 'package:flutter/material.dart';
import 'package:mafia_project/ui/globalwidgets/back_widget.dart';
import 'package:mafia_project/ui/screens/detail_rating_club_screen/widgets/list_best_man_role.dart';
import 'package:mafia_project/ui/screens/detail_rating_club_screen/widgets/list_best_months.dart';
import 'package:mafia_project/ui/screens/detail_rating_club_screen/widgets/list_leader_percent.dart';
import 'package:mafia_project/ui/screens/detail_rating_club_screen/widgets/list_roles_percent.dart';
import 'package:mafia_project/ui/theme/theme.dart';

import '../../globalwidgets/round_chart.dart';
import 'adaptive/over_1400.dart';
import 'adaptive/over_1700.dart';
import 'adaptive/over_750.dart';
import 'adaptive/over_950.dart';
import 'adaptive/up_to_750.dart';

class DetailRatingClubScreen extends StatelessWidget {
  const DetailRatingClubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    var colorsDefault = themeData.extension<ThemeColors>()!;
    return Scaffold(
      backgroundColor: colorsDefault.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: mediaQuery.padding.top + 8, left: 16, right: 16),
          child: Stack(children: [
            const BackWidget(),
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 1700) {
                return const Over1700();
              }
              if (constraints.maxWidth > 1400) {
                return const Over1400();
              }
              if (constraints.maxWidth > 950) {
                return const Over950();
              }
              if (constraints.maxWidth > 750) {
                return const Over750();
              }
              return  const Padding(
                padding: EdgeInsets.only(top: 26.0),
                child: UpTo750(),
              );
            }),
          ]),
        ),
      ),
    );
  }
}
