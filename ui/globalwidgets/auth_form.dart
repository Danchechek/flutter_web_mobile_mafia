import 'package:flutter/material.dart';

import '../../utils/consts.dart';
import '../theme/colors.dart';
import '../theme/theme.dart';

class AuthForm extends StatelessWidget {
  final String? defaultText;
  final String? errorMessage;
  final Color? colorBackground;
  final String hintText;
  final double width;
  final double? maxHeight;
  final bool? fromStart;
  final int? countLine;

  const AuthForm(
      {Key? key,
      required this.hintText,
      required this.width,
      this.colorBackground,
      this.defaultText,
      this.errorMessage,
      this.maxHeight,
      this.fromStart, this.countLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var themeColor = theme.extension<DefaultColors>()!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: fromStart == true
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        errorMessage != null
            ? Text(
                errorMessage!,
                textAlign: TextAlign.center,
                style: theme.textTheme.headline4!
                    .copyWith(color: themeColor.bordoBorder),
              )
            : const SizedBox(),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: maxHeight ?? 0),
          child: Container(
            width: width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: colorBackground ?? AppColors.whiteColorButton,
            ),
            child: TextFormField(
              initialValue: defaultText,
              maxLines: countLine,
              showCursor: false,
              style: theme.textTheme.headline4,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                suffix: null,
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: theme.textTheme.headline2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
