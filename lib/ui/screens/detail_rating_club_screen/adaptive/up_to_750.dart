import 'package:flutter/material.dart';

import '../../../globalwidgets/round_chart.dart';
import '../../../theme/theme.dart';
import '../widgets/list_best_man_role.dart';
import '../widgets/list_best_months.dart';
import '../widgets/list_leader_percent.dart';
import '../widgets/list_roles_percent.dart';

class UpTo750 extends StatelessWidget {
  const UpTo750({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Row(
      children: [
        Flexible(child: Container()),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 288),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Кланы и процент побед',
                textAlign: TextAlign.center,
                style: themeData.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 32,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 0.0, bottom: 16),
                child: RoundDiagram(),
              ),
              Text(
                'Лучшие игроки по месяцам',
                textAlign: TextAlign.center,
                style: themeData.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                width: 280,
                child: ListBestMonths(
                    visible: true, countItems: 10),
              ),
              Text(
                'По проценту побед',
                textAlign: TextAlign.center,
                style: themeData.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                width: 240,
                child: ListLeadersPercent(
                  countItems: 10,
                  visible: true,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Роли и процент побед',
                textAlign: TextAlign.center,
                style: themeData.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                width: 278,
                child: ListRolesLeadersPercent(
                  countItems: 10,
                  visible: true,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 280,
                child: Text(
                  'Роль и игрок с лушчим процентом побед за нее',
                  textAlign: TextAlign.center,
                  style: themeData.textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                width: 288,
                child: ListBestManRole(
                  visible: true,
                  countItems: 10,
                ),
              ),

            ],
          ),
        ),
        Flexible(child: Container()),
      ],
    );
  }
}
