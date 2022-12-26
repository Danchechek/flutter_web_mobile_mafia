import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/create_club/create_club.dart';
import 'package:mafia_project/ui/screens/main/main_screen.dart';

import '../../data/calendar.dart';
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
}

class MainNavigation {
  String initialRoute() => MainNavigationRouteNames.auth;

  final routes = <String, Widget Function(BuildContext)>{

    MainNavigationRouteNames.createClubScreen: (context) {
      return const CreateClub(changeable: true,);
    },


    MainNavigationRouteNames.historyGames: (context) {
      return HistoryGames(calendarDataList: CalendarDataList.data,);
    },

    MainNavigationRouteNames.detailRatingClubScreen: (context) {
      return const DetailRatingClubScreen();
    },

    MainNavigationRouteNames.detailScreen: (context) {
      return const DetailStatScreen();
    },

    MainNavigationRouteNames.mainScreen: (context) {
      setOrientation(ScreenOrientation.rotating);
      return const MainScreen();
    },

    MainNavigationRouteNames.auth: (context) {
      setOrientation(ScreenOrientation.portraitOnly);
      return const AuthScreen();
    },

    MainNavigationRouteNames.descriptionRulesNotChangeable: (context) {
      return const CreateClub(changeable: false,);
    },
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.clubScreen:
        final arguments = settings.arguments;
        final clubName = arguments is String ? arguments : '';
        return MaterialPageRoute(
          builder: (context) => ClubScreen(
            clubName: clubName,
          ),
        );
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}
