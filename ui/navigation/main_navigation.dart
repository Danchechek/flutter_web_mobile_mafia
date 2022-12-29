import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mafia_project/ui/screens/create_club/create_club.dart';
import 'package:mafia_project/ui/screens/main/main_screen.dart';
import 'package:mafia_project/ui/screens/splash_screen/splash_screen.dart';

import '../../bloc/splash_cubit/splash_cubit.dart';
import '../../data/calendar.dart';
import '../../domain/factoryes/screen_factory.dart';
import '../../utils/utils.dart';
import '../screens/authorization/authorization.dart';
import '../screens/club/club_screen.dart';
import '../screens/create_club/accessibility/user_accessibility_create_club_screen.dart';
import '../screens/detail_rating_club_screen/detail_rating_club_screen.dart';
import '../screens/detail_stat/detail_stat_screen.dart';
import '../screens/history_games/history_games.dart';

abstract class MainNavigationRouteNames {
  static const auth = 'auth';
  static const mainScreen = '/';
  static const clubScreen = '/club';
  static const detailScreen = '/detailScreen';
  static const detailRatingClubScreen = '/detailRatingClubScreen';
  static const historyGames = '/historyGames';
  static const createClubScreen = '/clubScreen';
  static const descriptionRulesNotChangeable = '/descriptionRulesNotChangeable';
  static const splashScreen = '/splashScreen';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();

  String initialRoute() => MainNavigationRouteNames.splashScreen;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.splashScreen: (context) {
      return _screenFactory.makeSplashScreen();
    },

    MainNavigationRouteNames.createClubScreen: (context) {
      return _screenFactory.makeCreateClubScreen(true);
    },
    MainNavigationRouteNames.historyGames: (context) {
      return _screenFactory.makeHistoryGamesScreen();
    },
    MainNavigationRouteNames.detailRatingClubScreen: (context) {
      return _screenFactory.makeDetailRatingClubScreenScreen();
    },
    MainNavigationRouteNames.detailScreen: (context) {
      return _screenFactory.makeDetailStatScreenScreen();
    },

    MainNavigationRouteNames.mainScreen: (context) {
      setOrientation(ScreenOrientation.rotating);
      return _screenFactory.makeMainScreen();
    },

    MainNavigationRouteNames.auth: (context) {
      setOrientation(ScreenOrientation.portraitOnly);
      return _screenFactory.makeAuthScreen();
    },
    MainNavigationRouteNames.descriptionRulesNotChangeable: (context) {
      return _screenFactory.makeCreateClubScreen(false);
    },
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.clubScreen:
        final arguments = settings.arguments;
        final clubName = arguments is String ? arguments : '';
        return MaterialPageRoute(
          builder: (context) => _screenFactory.makeClubScreen(clubName),
        );
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}
