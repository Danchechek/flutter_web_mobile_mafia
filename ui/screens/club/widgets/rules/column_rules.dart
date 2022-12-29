import 'package:flutter/material.dart';

import '../../../../../utils/paths.dart';
import '../../../../../utils/utils.dart';
import '../../../../navigation/main_navigation.dart';
import '../../../../theme/src/app_button_style.dart';
import '../../../../theme/theme.dart';

class ColumnRoles extends StatelessWidget {
  const ColumnRoles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        roleCard(
          context,
          MafiaRole.peacefulMan,
        ),
        const SizedBox(
          height: 8,
        ),
        roleCard(
          context,
          MafiaRole.mafia,
        ),
        const SizedBox(
          height: 8,
        ),
        roleCard(
          context,
          MafiaRole.grey,
        ),
      ],
    );
  }
}

Widget roleCard(BuildContext context, MafiaRole role) {
  var themeColors = Theme.of(context).extension<ThemeColors>()!;
  var path = '';
  var nameRole = '';
  var dataCalendar = getCalendarData(role);
  path = dataCalendar.path;
  nameRole = dataCalendar.nameRole;
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: ElevatedButton(
      style: AppButtonStyle.coverStyle,
      onPressed: (){
        Navigator.of(context).pushNamed(
            MainNavigationRouteNames.descriptionRulesNotChangeable,);
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: themeColors.blindColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
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
              children: [
                Flexible(child: Container()),
                Text(
                  nameRole,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Flexible(child: Container()),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
