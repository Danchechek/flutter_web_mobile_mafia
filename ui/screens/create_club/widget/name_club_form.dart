import 'package:flutter/material.dart';
import 'package:mafia_project/ui/theme/theme.dart';

import '../../../globalwidgets/auth_form.dart';
import '../../../globalwidgets/error_message.dart';

class NameClubForm extends StatelessWidget {
  final String? error;

  const NameClubForm({Key? key, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          ErrorMessage(error: error),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 55.0,
            ),
            child: AuthForm(
              width: 200,
              hintText: 'Название...',
              colorBackground: Colors.white.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
