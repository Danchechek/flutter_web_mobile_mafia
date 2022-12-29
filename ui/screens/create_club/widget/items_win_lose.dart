import 'package:flutter/material.dart';
import 'package:mafia_project/ui/screens/create_club/widget/counter.dart';

class ItemsWinLose extends StatelessWidget {
  final double? width;
  final bool? changeable;

  const ItemsWinLose({Key? key, this.width, this.changeable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: width ?? 200, maxWidth: width != null ? width! : 360),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'За победу',
                style: theme.textTheme.headline6,
              ),
              Counter(changeable: changeable,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'За проигрыш',
                style: theme.textTheme.headline6,
              ),
              Counter(changeable: changeable,)
            ],
          ),
        ],
      ),
    );
  }
}
