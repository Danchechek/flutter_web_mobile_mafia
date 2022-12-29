import 'package:flutter/material.dart';
import 'package:mafia_project/ui/theme/src/app_button_style.dart';
import '../../../../utils/paths.dart';
import '../../../navigation/main_navigation.dart';
import '../../../theme/theme.dart';

class Club extends StatelessWidget {
  const Club({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    DefaultColors extetnsion = theme.extension<DefaultColors>()!;
    ThemeColors extetnsionTheme = theme.extension<ThemeColors>()!;
    return Stack(children: [
      Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: extetnsion.bordoBorder,
            borderRadius: const BorderRadius.all(Radius.circular(23))),
        child: Container(
          height: 115,
          width: 205,
          decoration: BoxDecoration(
              color: extetnsionTheme.backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            opacity: 1,
                            image: AssetImage(AppPaths.laNostra),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'La nostra famiglia',
                  style: theme.textTheme.subtitle1,
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 4, top: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ElevatedButton(
            onPressed: () {
              const name = 'La Nostra';
              Navigator.of(context).pushNamed(
                  MainNavigationRouteNames.clubScreen,
                  arguments: name);
            },
            style: AppButtonStyle.coverStyle,
            child: const SizedBox(
              height: 115,
              width: 205,
            ),
          ),
        ),
      ),
    ]);
  }
}
