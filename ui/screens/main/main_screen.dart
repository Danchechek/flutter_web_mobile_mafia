import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/main/widgets/club.dart';
import 'package:mafia_project/ui/screens/main/widgets/count_percentage.dart';
import 'package:mafia_project/ui/globalwidgets/graphics.dart';
import 'package:mafia_project/ui/screens/main/widgets/header.dart';
import 'package:mafia_project/ui/screens/main/widgets/open_statistics.dart';
import '../../globalwidgets/drawer.dart';
import '../../theme/theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    ThemeColors extetnsion = theme.extension<ThemeColors>()!;
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: extetnsion.backgroundColor,
      drawer: Padding(
          padding: EdgeInsets.only(top: 158 + mediaQuery.padding.top),
          child: const AppDrawer()),
      body: SingleChildScrollView(
        child: Container(
          color: extetnsion.backgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Header(),
              const SizedBox(
                height: 8,
              ),
              const CountPercentage(),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Любимый клуб',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(
                height: 12,
              ),
              const Club(),
              const SizedBox(
                height: 24,
              ),
              const Graphics(showLinearDialog: true,),
              const SizedBox(
                height: 32,
              ),
              const OpenStatistic(),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
