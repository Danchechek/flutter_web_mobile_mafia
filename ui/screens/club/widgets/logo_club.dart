import 'package:flutter/material.dart';

import '../../../../utils/paths.dart';
import '../../../../utils/paths.dart';
import '../../../theme/theme.dart';

class LogoClub extends StatelessWidget {
  final String? path;
  const LogoClub({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pathIcon = path ?? AppPaths.photoIcon;
    var theme = Theme.of(context);
    return Container(
      width: 200,
      height: 199,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: theme.extension<DefaultColors>()!.bordoBorder,
        borderRadius: const BorderRadius.all(Radius.circular(23)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: theme.extension<ThemeColors>()!.backgroundColor,
          child: Container(
            margin: path == null ? const EdgeInsets.all(50) : EdgeInsets.zero,
            decoration: BoxDecoration(
                image:  DecorationImage(
                  opacity: 1,
                  image: AssetImage(pathIcon),
                  fit: BoxFit.cover
                )),
          ),
        ),
      ),
    );
  }
}
