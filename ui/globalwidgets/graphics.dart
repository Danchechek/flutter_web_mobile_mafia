import 'package:flutter/material.dart';
import 'package:mafia_project/data/rating.dart';
import 'package:mafia_project/ui/globalwidgets/show_dialog.dart';
import 'package:mafia_project/ui/globalwidgets/text_card.dart';
import '../../utils/utils.dart';
import '../theme/theme.dart';
import '../screens/main/widgets/line_chart.dart';
import 'round_chart.dart';

class Graphics extends StatelessWidget {
  final bool showLinearDialog;

  const Graphics({Key? key, required this.showLinearDialog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return mediaQuery.size.width >= 726
        ? RowGraphics(showLinearDialog: showLinearDialog)
        : ColumnGraphics(showLinearDialog: showLinearDialog);
  }
}

class RowGraphics extends StatelessWidget {
  final bool showLinearDialog;

  const RowGraphics({Key? key, required this.showLinearDialog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var widthContainer = (mediaQuery.size.width - 128) / 2;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(children: [
            TextCard(
                width: widthContainer,
                text: 'Проценты игр за красные серые и черные роли:'),
            const SizedBox(height: 42),
            const SizedBox(
              height: 176,
              width: 160,
              child: RoundDiagram(),
            ),
          ]),
          const SizedBox(
            width: 96,
          ),
          Column(children: [
            TextCard(width: widthContainer, text: 'График процента побед:'),
            SizedBox(height: showLinearDialog ? 32 : 0),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              showLinearDialog
                  ? const ShowDialog(text: 'Это график процента побед от времени. Нажав на график, вы увидете какой в этот день был проценто побед')
                  : const SizedBox(),
              SizedBox(
                height: 176,
                width: widthContainer - 32,
                child: LineDiagram(points: getPoints(Rating.mapDateRating)),
              ),
            ]),
          ]),
        ],
      ),
    );
  }
}

class ColumnGraphics extends StatelessWidget {
  final bool showLinearDialog;

  const ColumnGraphics({Key? key, required this.showLinearDialog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    var widthContainer = mediaQuery.size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(children: [
            Container(
              width: widthContainer,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                  color: theme.extension<ThemeColors>()!.blindColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Text(
                'Проценты игр за красные серые и черные роли:',
                textAlign: TextAlign.center,
                style: theme.textTheme.headline6,
              ),
            ),
            const SizedBox(height: 42),
            SizedBox(
              height: 176,
              width: widthContainer - 32,
              child: const RoundDiagram(),
            ),
          ]),
          const SizedBox(
            height: 32,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              width: widthContainer,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                  color: theme.extension<ThemeColors>()!.blindColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Text(
                'График процента побед',
                textAlign: TextAlign.center,
                style: theme.textTheme.headline6,
              ),
            ),
            SizedBox(height: showLinearDialog ? 32 : 0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                showLinearDialog
                    ? const ShowDialog(
                        text:
                            'Это график процента побед от времени. Нажав на график, вы увидете какой в этот день был проценто побед')
                    : const SizedBox(),
                SizedBox(
                  height: 176,
                  width: widthContainer - 62,
                  child: LineDiagram(points: getPoints(Rating.mapDateRating)),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
