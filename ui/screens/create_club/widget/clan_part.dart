import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/create_club/widget/role_part.dart';


class ClanPart extends StatelessWidget {
  final String tittle;
  final bool? changeable;

  const ClanPart({Key? key, required this.tittle, this.changeable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tittle, style: theme.textTheme.bodyLarge),
        const SizedBox(
          height: 16,
        ),
        const RolePart(
          nameRole: 'Мирный житель',
          description:
              'Ночью спит и не совершает никаких активных действий. В течение дня пытается вычислить мафию и серых игроков и изгнать их на голосовании.',
        ),
        const RolePart(
          nameRole: 'Шериф',
          description:
              'Стреляет по ночам, пытаясь убить мафию. Один раз за игру может сделать выстрел в воздух.',
        ),
        const RolePart(
          nameRole: 'Доктор',
          description:
              'Лечит других игроков. Себя может лечить лишь один раз за всю игру. Не может навещать одного и того же игрока две ночи подряд. Один раз за игру может никого не лечить.',
        ),
        const RolePart(
          nameRole: 'Комиссар',
          description:
              'По ночам ищет мафию. Он выбирает одного из игроков, и ведущий сообщает, является он мирным или мафией. Все одиночки для комиссара выглядят, как мирные жители.',
        ),
      ],
    );
  }
}
