import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ErrorMessage extends StatelessWidget {
  final String? error;

  const ErrorMessage({Key? key, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var themeColor = theme.extension<DefaultColors>()!;
    return error != null
        ? Text(
            error!,
            textAlign: TextAlign.center,
            style: theme.textTheme.headline4!
                .copyWith(color: themeColor.loseColor.withOpacity(0.7)),
          )
        : const SizedBox();
  }
}
