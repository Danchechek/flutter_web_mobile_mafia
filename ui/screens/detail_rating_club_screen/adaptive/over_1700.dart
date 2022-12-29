import 'package:flutter/material.dart';

import '../../../globalwidgets/round_chart.dart';
import '../../../theme/theme.dart';
import '../widgets/list_best_man_role.dart';
import '../widgets/list_best_months.dart';
import '../widgets/list_leader_percent.dart';
import '../widgets/list_roles_percent.dart';

class Over1700 extends StatelessWidget {
  const Over1700({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 240,
                    child: Column(children: [
                      Text(
                        'По проценту побед',
                        textAlign: TextAlign.center,
                        style: themeData.textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const ListLeadersPercent(
                        countItems: 10,
                        visible: true,
                      ),
                    ]),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  SizedBox(
                      width: 280,
                      child: Column(children: [
                        Text(
                          'Роли и процент побед',
                          textAlign: TextAlign.center,
                          style: themeData.textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const SizedBox(
                          width: 280,
                          child: ListRolesLeadersPercent(
                            countItems: 10,
                            visible: true,
                          ),
                        ),
                      ])),
                  const SizedBox(
                    width: 32,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 400,
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
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        SizedBox(
          width: 288,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Лучшие игроки по месяцам',
                textAlign: TextAlign.center,
                style: themeData.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              const ListBestMonths(visible: true, countItems: 10),
            ],
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        SizedBox(
          width: 288,
          child: Column(
            children: [
              Text(
                'Кланы и процент побед',
                textAlign: TextAlign.center,
                style: themeData.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 32,
              ),
              const RoundDiagram(),
            ],
          ),
        ),
      ],
    );
  }
}
