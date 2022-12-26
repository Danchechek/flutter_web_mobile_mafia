import 'package:flutter/material.dart';
import 'package:mafia_project/ui/theme/colors.dart';

import '../../utils/paths.dart';
import '../navigation/main_navigation.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      width: 200,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        child: Drawer(
            backgroundColor: AppColors.backOfDrawer,
            child: Column(
              children: [
                ListTile(
                  trailing: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(AppPaths.findingIcon)),
                  title: Text('Поиск клуба', style: theme.textTheme.subtitle2,),
                  onTap: () {},
                ),
                ListTile(
                  trailing: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(AppPaths.mafiaIcon)),
                  title: Text('Создать клуб', style: theme.textTheme.subtitle2,),
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(MainNavigationRouteNames.createClubScreen);
                  },
                ),
                ListTile(
                  trailing: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(AppPaths.licenseIcon)),
                  title: Text(
                    'Лицензии',
                    style: theme.textTheme.subtitle2,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  trailing: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(AppPaths.settingIcon)),
                  title: Text('Настройки',style: theme.textTheme.subtitle2,),
                  onTap: () {},
                ),

              ],
            )),
      ),
    );
  }
}
