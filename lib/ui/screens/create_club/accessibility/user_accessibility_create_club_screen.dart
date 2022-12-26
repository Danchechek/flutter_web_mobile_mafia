import 'package:flutter/material.dart';
import '../../../globalwidgets/back_widget.dart';
import '../widget/clan_part.dart';

class UserAccessibilityCreateClubScreen extends StatelessWidget {
  const UserAccessibilityCreateClubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const SizedBox(width: 25, child: BackWidget()),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 24,),
          ClanPart(tittle: 'Черный клан', changeable: false,),
          ClanPart(tittle: 'Красный клан'),
        ],
      ),
    ]);
  }
}
