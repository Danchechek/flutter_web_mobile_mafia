import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mafia_project/bloc/splash_cubit/splash_cubit.dart';
import 'package:mafia_project/ui/screens/authorization/authorization.dart';
import 'package:mafia_project/ui/screens/main/main_screen.dart';
import 'package:mafia_project/ui/theme/theme.dart';
import 'package:mafia_project/utils/paths.dart';

import '../../navigation/main_navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var themeExtension = theme.extension<ThemeColors>()!;
    return BlocBuilder<SplashCubit, AuthorizationState>(
      buildWhen: (_, current) => current.authorization != null,
      builder: (context, state) {
        if (state.authorization == true) {
          return const MainScreen();
        } else if (state.authorization == false) {
          return const AuthScreen();
        }
        return Scaffold(
          backgroundColor: themeExtension.backgroundColor,
          body: Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                AppPaths.mafiaIcon,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
