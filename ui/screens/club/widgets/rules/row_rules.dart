import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/club/widgets/rules/column_rules.dart';

import '../../../../../utils/utils.dart';

class RowRules extends StatelessWidget {
  const RowRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        roleCard(
          context,
          MafiaRole.peacefulMan,
        ),
        Flexible(child: Container()),
        roleCard(
          context,
          MafiaRole.mafia,
        ),
        Flexible(child: Container()),
        roleCard(
          context,
          MafiaRole.grey,
        ),
      ],
    );
  }
}
