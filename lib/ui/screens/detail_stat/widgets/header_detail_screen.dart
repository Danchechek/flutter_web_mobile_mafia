import 'package:flutter/material.dart';
import 'package:mafia_project/ui/globalwidgets/back_widget.dart';
import 'package:mafia_project/ui/screens/detail_stat/widgets/short_history_games_clans.dart';

class HeaderDetailScreen extends StatelessWidget {
  const HeaderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 524) {
        return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackWidget(),
                Flexible(child: Container()),
                SizedBox(
                  width: mediaQuery.size.width / 2,
                  child: Column(
                    children: [
                      Text(
                        'Самая полная статистика вашей игры из клуба La nostra',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Количество игр: 15',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline5,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Чаще всего попадалась карта : Плесень',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Беспроигрышной серия: 7',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Flexible(child: Container()),
                SizedBox(
                  width: 200,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      const ShortHistoryGamesClans(
                        showDialogShortStatRules: true,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                Flexible(child: Container()),
              ],
            );



      }
      return
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackWidget(),
                  Flexible(child: Container()),
                  SizedBox(
                    width: mediaQuery.size.width / 1.5,
                    child: Column(
                      children: [
                        Text(
                          'Самая полная статистика вашей игры из клуба La nostra',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Количество игр: 15',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headline5,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Чаще всего попадалась карта : Плесень',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Беспроигрышной серия: 7',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  Flexible(child: Container()),
                ],
              ),
              SizedBox(
                width: 200,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    const ShortHistoryGamesClans(
                      showDialogShortStatRules: true,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ],
          );


    });
  }
}
