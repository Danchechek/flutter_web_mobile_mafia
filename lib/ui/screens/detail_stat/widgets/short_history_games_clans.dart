import 'package:flutter/material.dart';
import 'package:mafia_project/ui/globalwidgets/show_dialog.dart';
import 'package:mafia_project/ui/screens/detail_stat/widgets/short_history_item.dart';
import 'package:mafia_project/ui/theme/src/app_button_style.dart';
import 'package:mafia_project/utils/paths.dart';

import '../../../theme/theme.dart';

class ShortHistoryGamesClans extends StatelessWidget {
  final bool showDialogShortStatRules;

  const ShortHistoryGamesClans(
      {Key? key, required this.showDialogShortStatRules})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Stack(children: [
      showDialogShortStatRules
          ? const Positioned(
              right: 0,
              top: 0,
              child: ShowDialog(
                text:
                    'Кружочки показывают как сыграны последние пять игр за клан, при нажатии на них откроется календарь и вы сможете посмотреть историю игр этого клана',
              ),
            )
          : const SizedBox(),
      Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  children: const [
                    SizedBox(
                      height: 8,
                    ),
                    ShortHistoryItem(
                      countItem: 5,
                      pathRole: AppPaths.zhulicIcon,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ShortHistoryItem(
                      countItem: 2,
                      pathRole: AppPaths.manIcon,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ShortHistoryItem(
                      countItem: 4,
                      pathRole: AppPaths.mafiaIcon,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}
