import 'package:flutter/material.dart';

import '../../../../data/rating.dart';
import '../../../../utils/utils.dart';
import '../../../globalwidgets/text_card.dart';
import '../../main/widgets/line_chart.dart';

class BestCardsDiagram extends StatelessWidget {
  const BestCardsDiagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 1.5;
    TextTheme theme = Theme.of(context).textTheme;

    return Column(
      children: [
        TextCard(width: width, text: 'Карты и графики от процента побед'),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Flexible(child: Container(), flex: 4),
            Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Плесень',
                  style: theme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: width,
                    height: 200,
                    child: LineDiagram(points: getPoints(Rating.mapDateRating))),
                Text(
                  'Плесень',
                  style: theme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: width,
                    height: 200,
                    child: LineDiagram(points: getPoints(Rating.mapDateRating))),
                Text(
                  'Плесень',
                  style: theme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: width,
                    height: 200,
                    child: LineDiagram(points: getPoints(Rating.mapDateRating))),
                Text(
                  'Плесень',
                  style: theme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: width,
                    height: 200,
                    child: LineDiagram(points: getPoints(Rating.mapDateRating))),
                Text(
                  'Плесень',
                  style: theme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: width,
                    height: 200,
                    child: LineDiagram(points: getPoints(Rating.mapDateRating))),
                Text(
                  'Плесень',
                  style: theme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: width,
                    height: 200,
                    child: LineDiagram(points: getPoints(Rating.mapDateRating))),
                Text(
                  'Плесень',
                  style: theme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: width,
                    height: 200,
                    child: LineDiagram(points: getPoints(Rating.mapDateRating))),
                Text(
                  'Плесень',
                  style: theme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: width,
                    height: 200,
                    child: LineDiagram(points: getPoints(Rating.mapDateRating))),
              ],
            ),
            Flexible(child: Container(), flex: 5,),
          ],
        ),
      ],
    );
  }
}
