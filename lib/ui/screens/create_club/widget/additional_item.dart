import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/create_club/widget/counter.dart';

import '../../../globalwidgets/auth_form.dart';

class AdditionalItem extends StatelessWidget {
  final double? width;
  final String? description;
  final bool? changeable;

  const AdditionalItem(
      {Key? key, this.description, this.width, this.changeable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        changeable == true
            ? const SizedBox(
                height: 8,
              )
            : const SizedBox(),
        changeable == true
            ? getRemoveAddIcon(context, false)
            : const SizedBox(),
        const SizedBox(
          height: 4,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: width ?? 280, maxWidth: width != null ? width! : 360),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  changeable == true
                      ? AuthForm(
                          defaultText: description,
                          width: constraints.maxWidth - 90,
                          maxHeight: 90.0,
                          hintText: 'Описание...',
                          colorBackground: Colors.white.withOpacity(0.3),
                        )
                      : Text(
                          description ?? '',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                  Flexible(child: Container()),
                  Counter(
                    changeable: changeable,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
