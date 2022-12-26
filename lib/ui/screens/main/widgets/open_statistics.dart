import 'package:flutter/material.dart';
import '../../../navigation/main_navigation.dart';
import '../../../theme/src/app_button_style.dart';
import '../../../theme/theme.dart';

class OpenStatistic extends StatelessWidget {
  const OpenStatistic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    DefaultColors extetnsion = theme.extension<DefaultColors>()!;
    ThemeColors extetnsionDefault = theme.extension<ThemeColors>()!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: extetnsion.bordoBorder,
            borderRadius: const BorderRadius.all(Radius.circular(23))),
        child: Container(
          padding: const EdgeInsets.symmetric(),
          decoration: BoxDecoration(
              color: extetnsionDefault.backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ElevatedButton(
              style: AppButtonStyle.coverStyle,
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(MainNavigationRouteNames.detailScreen);
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 3),
                child: Text(
                  'Открыть самую полную статистику',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headline6,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
