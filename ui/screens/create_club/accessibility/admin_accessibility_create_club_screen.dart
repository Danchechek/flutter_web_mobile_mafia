import 'package:flutter/material.dart';

import '../../../globalwidgets/auth_form.dart';
import '../../../globalwidgets/back_widget.dart';
import '../../../globalwidgets/open_all_button.dart';
import '../../club/widgets/logo_club.dart';
import '../widget/clan_part.dart';

class AdminAccessibilityCreateClubScreen extends StatelessWidget {
  const AdminAccessibilityCreateClubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const SizedBox(width: 25, child: BackWidget()),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LogoClub(
            path: null,
          ),
          const SizedBox(
            height: 8,
          ),
          AuthForm(
            errorMessage: 'Дурачелла, введи название',
            colorBackground: Colors.white.withOpacity(0.3),
            hintText: 'название...',
            width: 200,
            maxHeight: 70,
          ),
          const SizedBox(
            height: 16,
          ),
          const ClanPart(tittle: 'Черный клан'),
          const ClanPart(tittle: 'Красный клан'),
          AppTextButton(text: 'Создать клуб', function: () {}),
        ],
      ),
    ]);
  }
}
