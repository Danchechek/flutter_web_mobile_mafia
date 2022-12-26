import 'package:flutter/cupertino.dart';
import 'package:mafia_project/utils/paths.dart';

import '../../../theme/colors.dart';

class AuthBack extends StatelessWidget {
  const AuthBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.backgroundAuthColor,
          image: DecorationImage(
              opacity: 1,
              image: AssetImage(AppPaths.backAuth),
              fit: BoxFit.cover)),
    );
  }
}
