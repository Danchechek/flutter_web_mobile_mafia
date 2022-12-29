import 'package:flutter/material.dart';
import 'package:mafia_project/utils/paths.dart';

import '../theme/src/app_button_style.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        style: AppButtonStyle.iconStyle,
        child: SizedBox(
          width: 25,
          height: 20,
          child: Image.asset(
            AppPaths.backIcon,
          ),
        ),

    );
  }
}
