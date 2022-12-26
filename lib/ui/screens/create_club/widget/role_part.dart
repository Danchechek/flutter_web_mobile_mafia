import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/create_club/widget/additional_item.dart';
import 'package:mafia_project/ui/screens/create_club/widget/counter.dart';
import 'package:mafia_project/ui/screens/create_club/widget/items_win_lose.dart';

import '../../../globalwidgets/auth_form.dart';

class RolePart extends StatelessWidget {
  final String nameRole;
  final String? description;
  final bool? changeable;

  const RolePart(
      {Key? key, required this.nameRole, this.description, this.changeable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 650) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    nameRole,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headline6,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      changeable == true
                          ? AuthForm(
                              errorMessage:
                                  'muchas gracias afición esta es para vostros. SIUUUUUU',
                              fromStart: true,
                              defaultText: description,
                              width: double.infinity,
                              hintText: 'Описание роли...',
                              maxHeight: 300.0,
                              colorBackground: Colors.white.withOpacity(0.3),
                            )
                          : Text(
                              description ?? 'error',
                              style: theme.textTheme.headline4,
                            ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Итоговые баллы',
                        style: theme.textTheme.headline5,
                      ),
                      ItemsWinLose(
                        width: 500,
                        changeable: changeable,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Дополнительные баллы',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline5,
                      ),
                      AdditionalItem(
                        width: 500,
                        description: 'За блокировку активной роли',
                        changeable: changeable,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      changeable == true
                          ? SizedBox(
                              width: 500,
                              child: Row(
                                children: [
                                  Flexible(child: Container()),
                                  getRemoveAddIcon(context, true),
                                ],
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  flex: 5,
                ),
              ],
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameRole,
                textAlign: TextAlign.center,
                style: theme.textTheme.headline6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthForm(
                    defaultText: description,
                    width: double.infinity,
                    fromStart: true,
                    errorMessage: 'syyyyyyyyyy',
                    maxHeight: 300.0,
                    hintText: 'Описание роли...',
                    colorBackground: Colors.white.withOpacity(0.3),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Итоговые баллы',
                    style: theme.textTheme.bodyLarge,
                  ),
                  const ItemsWinLose(),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Дополнительные баллы',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge,
                  ),
                  const AdditionalItem(
                    description: 'За блокировку активной роли',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints(minWidth: 280, maxWidth: 360),
                    child: Row(
                      children: [
                        Flexible(child: Container()),
                        getRemoveAddIcon(context, true),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
