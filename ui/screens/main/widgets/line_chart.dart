import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../utils/utils.dart';
import '../../../theme/theme.dart';

class LineDiagram extends StatelessWidget {
  final Points points;

  const LineDiagram({
    Key? key,
    required this.points,
  }) : super(
          key: key,
        );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    var twelveDate = points.twelveDate;
    var keys = twelveDate.keys;
    String text;
    switch (value.toInt()) {
      case 0:
        text = twelveDate[keys.first]!;
        break;
      case 12:
        text = text = twelveDate[keys.last]!;
        break;

      default:
        return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 25:
        text = '25%';
        break;
      case 50:
        text = '50%';
        break;
      case 75:
        text = '75%';
        break;
      case 100:
        text = '100%';
        break;

      default:
        return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);
    ThemeColors extetnsion = theme.extension<ThemeColors>()!;

    return Stack(children: [
      LineChart(
        LineChartData(
          lineTouchData: LineTouchData(
            getTouchedSpotIndicator:
                (LineChartBarData barData, List<int> spotIndexes) {
              return spotIndexes.map((spotIndex) {
                return TouchedSpotIndicatorData(
                  FlLine(
                      color: Theme.of(context)
                          .extension<ThemeColors>()!
                          .blindColor,
                      strokeWidth: 2),
                  FlDotData(
                    getDotPainter: (spot, percent, barData, index) {
                      return FlDotCirclePainter(
                        radius: 0,
                        strokeWidth: 3,
                        strokeColor: Theme.of(context)
                            .extension<DefaultColors>()!
                            .bordoBorder,
                      );
                    },
                  ),
                );
              }).toList();
            },
            enabled: true,
            handleBuiltInTouches: true,
            getTouchLineStart: (data, index) => 0,
            touchTooltipData: LineTouchTooltipData(
              rotateAngle: -20,
              maxContentWidth: 100,
              tooltipBgColor: extetnsion.blindColor,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((LineBarSpot touchedSpot) {
                  return LineTooltipItem(
                    '${touchedSpot.y} % \n ${points.twelveDate[touchedSpot.x]}',
                    theme.textTheme.subtitle1!,
                  );
                }).toList();
              },
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: points.charts,
              barWidth: 1,
              color: Colors.black,
              dotData: FlDotData(
                show: false,
              ),
            ),
          ],
          minY: 0,
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: bottomTitleWidgets,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: leftTitleWidgets,
                interval: 1,
                reservedSize: 36,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: 1,
            checkToShowHorizontalLine: (double value) {
              return value == 25 || value == 50 || value == 75;
            },
          ),
        ),
      ),
    ]);
  }

}
