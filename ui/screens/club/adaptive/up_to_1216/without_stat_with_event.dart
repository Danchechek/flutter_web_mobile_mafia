import 'package:flutter/material.dart';

import '../../../../../utils/paths.dart';
import '../../../../globalwidgets/back_widget.dart';
import '../../../../globalwidgets/drawer_button.dart';
import '../../widgets/logo_club.dart';
import '../../widgets/rules/row_rules.dart';
import '../../widgets/scheduled_meeting.dart';

class WithoutStatWithEventUpTo1216 extends StatelessWidget {
  const WithoutStatWithEventUpTo1216({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Row(
          crossAxisAlignment:
          CrossAxisAlignment.start,
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
              ],
            ),
            Flexible(child: Container()),
            const ScheduledMeeting(visible: true),
            Flexible(child: Container()),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: [
            Text(
              'Роли и разбаловки в этом клубе',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: RowRules(),
            ),
          ],
        ),
      ],
    );
  }
}
