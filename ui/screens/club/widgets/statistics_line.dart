import 'package:flutter/material.dart';
import 'package:mafia_project/ui/globalwidgets/open_all_button.dart';

import '../../../navigation/main_navigation.dart';

class StatisticsLine extends StatelessWidget {
  const StatisticsLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          height: 16,
        ),
        ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Row(
          children: [
            Flexible(
              child: Container(
                height: 9,
                color: Colors.black,
              ),
              flex: 44,
            ),
            Flexible(
              child: Container(
                height: 9,
                color: Colors.red,
              ),
              flex: 46,
            ),
            Flexible(
              child: Container(
                height: 9,
                color: Colors.grey,
              ),
              flex: 10,
            ),
          ],
        ),
      ),
        const SizedBox(
          height: 16,
        ),
      AppTextButton(text: 'Открыть всю', function: () {
        Navigator.of(context)
            .pushNamed(MainNavigationRouteNames.detailRatingClubScreen);
      })]
    );
  }
}
