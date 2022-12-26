import 'package:flutter/material.dart';

import '../../../../../utils/paths.dart';
import '../../../../globalwidgets/back_widget.dart';
import '../../../../globalwidgets/drawer_button.dart';
import '../../widgets/logo_club.dart';
import '../../widgets/rules/column_rules.dart';

class WithoutStatWithoutEventUpTo1216 extends StatelessWidget {
  const WithoutStatWithoutEventUpTo1216 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
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
          ],
        ),
        Flexible(child: Container()),
        Column(
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
            const ColumnRoles(),
          ],
        ),
        Flexible(child: Container()),
      ],
    );
  }
}
