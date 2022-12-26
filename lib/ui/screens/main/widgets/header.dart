import 'package:flutter/material.dart';
import 'package:mafia_project/ui/theme/theme.dart';

import '../../../../utils/paths.dart';
import '../../../globalwidgets/drawer_logo.dart';
import '../../../theme/src/app_button_style.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    DefaultColors extetnsion = theme.extension<DefaultColors>()!;
    var mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 158 + mediaQuery.padding.top,
          decoration: BoxDecoration(
              color: theme.extension<DefaultColors>()!.backgroundAuthColor,
              image: const DecorationImage(
                  opacity: 1,
                  image: AssetImage(AppPaths.backMain),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: mediaQuery.padding.top + 80,
              left: (mediaQuery.size.width / 2) - 50),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: theme.extension<DefaultColors>()!.bordoBorder,
              borderRadius: const BorderRadius.all(Radius.circular(23)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  opacity: 1,
                  image: AssetImage(AppPaths.vika),
                )),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: mediaQuery.padding.top + 166,
            left: mediaQuery.size.width - 16 - 35,
          ),
          child: SizedBox(
            width: 35,
            height: 38,
            child: Stack(children: [
              Center(
                child: Text(
                  '9',
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              ElevatedButton(
                  style: AppButtonStyle.iconStyle,
                  onPressed: () {},
                  child: Image.asset(AppPaths.notiIcon)),
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: mediaQuery.padding.top + 166,
            left: 16,
          ),
          child: ElevatedButton(
            style: AppButtonStyle.iconStyle,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: const DrawerLogo(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: mediaQuery.padding.top + 198, left: 48, right: 40),
          child: Center(
            child: Stack(
              children: [
                Container(
                  height: 36,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: extetnsion.bordoBorder,
                    borderRadius: const BorderRadius.all(Radius.circular(23)),
                  ),
                  child: Container(
                    height: 32,
                    decoration: BoxDecoration(
                      color: theme.extension<ThemeColors>()!.backgroundColor,
                      borderRadius: const BorderRadius.all(Radius.circular(23)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16, left: 16, top: 0),
                      child: Text(
                        '@viksa',
                        style: theme.textTheme.headline5,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
