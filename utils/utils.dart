import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mafia_project/utils/paths.dart';

enum ScreenOrientation {
  portraitOnly,
  landscapeOnly,
  rotating,
}

enum MafiaRole { mafia, peacefulMan, peacefulWoman, grey }

class Points {
  final Map<double, String> twelveDate;
  final List<FlSpot> charts;

  Points(this.twelveDate, this.charts);
}

Points getPoints(final Map<String, double> mapDateRating) {
  Map<DateTime, double> dateFormat = _toDate(mapDateRating);
  Map<double, double> toTwelve = _toTwelvePointFormat(dateFormat);
  Map<double, String> twelveDate = _toTwelveDate(toTwelve, mapDateRating);
  List<FlSpot> charts = _toCharts(toTwelve);
  return Points(twelveDate, charts);
}

List<FlSpot> _toCharts(Map<double, double> toTwelve) {
  List<FlSpot> charts = [];

  for (int i = 0; i < toTwelve.length; i++) {
    toTwelve.keys.elementAt(i);
    toTwelve.values.elementAt(i);
    charts
        .add(FlSpot(toTwelve.keys.elementAt(i), toTwelve.values.elementAt(i)));
  }

  return charts;
}

Map<double, String> _toTwelveDate(
    Map<double, double> toTwelve, Map<String, double> mapDateRating) {
  Map<double, String> toTwelveDate = {};

  for (int i = 0; i < toTwelve.length; i++) {
    toTwelveDate[toTwelve.keys.elementAt(i)] = mapDateRating.keys.elementAt(i);
  }

  return toTwelveDate;
}

Map<DateTime, double> _toDate(Map<String, double> mapDateRating) {
  Map<DateTime, double> dateMap = mapDateRating.map(
      (key, value) => MapEntry(DateFormat("dd.MM.yyyy").parse(key), value));
  return dateMap;
}

Map<double, double> _toTwelvePointFormat(Map<DateTime, double> dateFormat) {
  int difference =
      dateFormat.keys.last.difference(dateFormat.keys.first).inDays;
  DateTime startDate = dateFormat.keys.first;

  Map<double, double> vspom = dateFormat.map(
      (key, value) => MapEntry(_toValue(startDate, difference, key), value));

  return vspom;
}

double _toValue(DateTime start, int period, DateTime value) {
  int difference = value.difference(start).inDays;

  return difference * 12 / period;
}

String getShortString(String text, int count) {
  if (text.length > count) {
    while (text.characters.length > count) {
      text = text.substring(0, text.length - 1);
    }
    text = text + '...';
    return text;
  }

  return text;
}

void setOrientation(ScreenOrientation orientation) {
  List<DeviceOrientation> orientations;
  switch (orientation) {
    case ScreenOrientation.portraitOnly:
      orientations = [
        DeviceOrientation.portraitUp,
      ];
      break;
    case ScreenOrientation.landscapeOnly:
      orientations = [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ];
      break;
    case ScreenOrientation.rotating:
      orientations = [
        DeviceOrientation.portraitUp,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ];
      break;
  }
  SystemChrome.setPreferredOrientations(orientations);
}

class CalendarData{
  final String path;
  final String nameRole;
  CalendarData(this.path, this.nameRole);
}

CalendarData getCalendarData(MafiaRole role){
  String path = '';
  String nameRole = '';
  switch (role) {
    case MafiaRole.grey:
      path = AppPaths.zhulicIcon;
      nameRole = 'Серые';
      break;
    case MafiaRole.mafia:
      path = AppPaths.mafiaIcon;
      nameRole = 'Мафия';
      break;
    case MafiaRole.peacefulMan:
      path = AppPaths.manIcon;
      nameRole = 'Мирные';
      break;
    case MafiaRole.peacefulWoman:
      path = AppPaths.womanIcon;
      nameRole = 'Мирные';
      break;
  }
  return CalendarData(path, nameRole);
}
