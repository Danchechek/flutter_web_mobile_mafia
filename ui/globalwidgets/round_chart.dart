import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mafia_project/ui/theme/theme.dart';
import 'package:mafia_project/utils/paths.dart';

class RoundDiagram extends StatefulWidget {
  const RoundDiagram({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => RoundDiagramState();
}

class RoundDiagramState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      width: 200,
      height: 200,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          sections: showingSections(theme),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections(ThemeData theme) {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 110.0 : 100.0;
      final widgetSize = isTouched ? 55.0 : 40.0;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color.fromRGBO(105, 63, 63, 1.0),
            value: 34,
            title: '34%',
            radius: radius,
            titleStyle: theme.textTheme.headline6,
            badgeWidget: _Badge(
              AppPaths.manIcon,
              size: widgetSize,
              borderColor: theme.extension<DefaultColors>()!.bordoBorder,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: const Color.fromRGBO(114, 88, 88, 1.0),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: theme.textTheme.headline6,
            badgeWidget: _Badge(
              AppPaths.zhulicIcon,
              size: widgetSize,
              borderColor: theme.extension<DefaultColors>()!.bordoBorder,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: const Color.fromRGBO(59, 51, 51, 1.0),

            value: 36,
            title: '36%',
            radius: radius,
            titleStyle: theme.textTheme.headline6,
            badgeWidget: _Badge(
              AppPaths.mafiaIcon,
              size: widgetSize,
              borderColor: theme.extension<DefaultColors>()!.bordoBorder,
            ),
            badgePositionPercentageOffset: .98,
          );
        default:
          throw Exception('Oh no');
      }
    });
  }
}

class _Badge extends StatelessWidget {
  const _Badge(
    this.svgAsset, {
    required this.size,
    required this.borderColor,
  });

  final String svgAsset;
  final double size;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Theme.of(context).extension<ThemeColors>()!.backgroundColor,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: Image.asset(
          svgAsset,
        ),
      ),
    );
  }
}
