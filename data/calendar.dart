import 'package:mafia_project/utils/paths.dart';
import 'package:mafia_project/utils/utils.dart';

class DateRoleWin {
  final String date;
  final MafiaRole role;
  final bool? win;

  DateRoleWin(this.date, this.role, this.win);
}

abstract class CalendarDataList {
  static List<DateRoleWin> data = [
    DateRoleWin('11.11.22', MafiaRole.mafia, true),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, null),
    DateRoleWin('11.11.22', MafiaRole.grey, true),
    DateRoleWin('11.11.22', MafiaRole.mafia, null),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, true),
    DateRoleWin('11.11.22', MafiaRole.mafia, null),
    DateRoleWin('11.11.22', MafiaRole.grey, null),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, true),
    DateRoleWin('11.11.22', MafiaRole.grey, false),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, null),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, true),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, null),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, false),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, false),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, false),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, false),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, false),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, false),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, false),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, false),
    DateRoleWin('11.11.22', MafiaRole.peacefulMan, false),
  ];
}
