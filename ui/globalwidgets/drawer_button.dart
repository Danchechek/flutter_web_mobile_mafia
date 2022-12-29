import 'package:flutter/material.dart';
import 'drawer_logo.dart';
import '../theme/src/app_button_style.dart';

class DrawerButton extends StatelessWidget {

  const DrawerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppButtonStyle.iconStyle,
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      child: const DrawerLogo(),
    );
  }
}
