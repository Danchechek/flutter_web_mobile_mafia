import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mafia_project/ui/screens/authorization/authorization.dart';

import '../../bloc/splash_cubit/splash_cubit.dart';
import '../../data/calendar.dart';
import '../../ui/screens/club/club_screen.dart';
import '../../ui/screens/create_club/create_club.dart';
import '../../ui/screens/detail_rating_club_screen/detail_rating_club_screen.dart';
import '../../ui/screens/detail_stat/detail_stat_screen.dart';
import '../../ui/screens/history_games/history_games.dart';
import '../../ui/screens/main/main_screen.dart';
import '../../ui/screens/splash_screen/splash_screen.dart';

class ScreenFactory {
  Widget makeSplashScreen() {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: const SplashScreen(),
    );
  }

  Widget makeCreateClubScreen(bool? changeable) {
    return const CreateClub(
      changeable: true,
    );
  }

  Widget makeDetailRatingClubScreenScreen() {
    return const DetailRatingClubScreen();
  }

  Widget makeDetailStatScreenScreen() {
    return const DetailStatScreen();
  }

  Widget makeMainScreen() {
    return const MainScreen();
  }

  Widget makeHistoryGamesScreen() {
    return HistoryGames(
      calendarDataList: CalendarDataList.data,
    );
  }

  Widget makeAuthScreen() {
    return const AuthScreen();
  }

  Widget makeClubScreen(String name) {
    return ClubScreen(
      clubName: name,
    );
  }
}
