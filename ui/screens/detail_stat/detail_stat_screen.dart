import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/detail_stat/widgets/best_cards_diagrams.dart';
import 'package:mafia_project/ui/screens/detail_stat/widgets/header_detail_screen.dart';
import '../../globalwidgets/graphics.dart';
import '../../theme/theme.dart';

class DetailStatScreen extends StatelessWidget {
  const DetailStatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    ThemeColors extetnsion = theme.extension<ThemeColors>()!;
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: extetnsion.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16 + mediaQuery.padding.top),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              HeaderDetailScreen(),
              SizedBox(
                height: 8,
              ),

              SizedBox(
                height: 16,
              ),
              Graphics(showLinearDialog: true,),
              SizedBox(
                height: 42,
              ),
              BestCardsDiagram(),
            ],
          ),
        ),
      ),
    );
  }
}
