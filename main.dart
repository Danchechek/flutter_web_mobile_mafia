import 'package:flutter/material.dart';
import 'package:mafia_project/ui/navigation/main_navigation.dart';
import 'package:mafia_project/ui/theme/theme.dart';
import 'package:mafia_project/utils/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mafia',
      darkTheme: darkTheme,
      theme: lightTheme,
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute(),
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
