import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/authorization/widgets/auth_background.dart';
import 'package:mafia_project/ui/screens/authorization/widgets/auth_forms.dart';
import 'package:mafia_project/ui/screens/authorization/widgets/auth_header.dart';
import 'package:mafia_project/ui/theme/theme.dart';
import 'package:mafia_project/utils/paths.dart';
import '../../globalwidgets/auth_form.dart';
import '../../navigation/main_navigation.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AuthBack(),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: Column(
              children: [
                const AuthHeader(),
                Flexible(flex: 1, child: Container()),
                Column(
                  children: [
                    const AuthForm(
                      width: 218,
                      countLine: 1,
                      maxHeight: 35,
                      hintText: 'Никнейм...',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AuthForm(
                      countLine: 1,
                      maxHeight: 35,
                      width: 218,
                      hintText: 'Пароль...',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ElevatedButton(
                          style: Theme.of(context).elevatedButtonTheme.style,
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(
                                MainNavigationRouteNames.mainScreen);
                          },
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 5),
                              child: Image.asset(AppPaths.openDorIcon))),
                    ),
                  ],
                ),
                Flexible(flex: 1, child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
