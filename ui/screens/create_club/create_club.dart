import 'package:flutter/material.dart';
import 'package:mafia_project/ui/globalwidgets/open_all_button.dart';
import 'package:mafia_project/ui/screens/club/widgets/logo_club.dart';
import 'package:mafia_project/ui/screens/create_club/widget/clan_part.dart';

import '../../../utils/paths.dart';
import '../../globalwidgets/auth_form.dart';
import '../../globalwidgets/back_widget.dart';
import '../../theme/theme.dart';
import 'accessibility/admin_accessibility_create_club_screen.dart';
import 'accessibility/user_accessibility_create_club_screen.dart';

class CreateClub extends StatelessWidget {
  final bool? changeable;

  const CreateClub({Key? key, this.changeable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    ThemeColors extetnsion = theme.extension<ThemeColors>()!;
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: extetnsion.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: mediaQuery.padding.top + 8,
                left: 16,
                right: 16,
                bottom: 16),
            child: changeable == true
                ? const AdminAccessibilityCreateClubScreen()
                : const UserAccessibilityCreateClubScreen(),
          ),
        ));
  }
}
