import 'package:intl/intl.dart';

DateTime dateFormatter(String date) => DateFormat('yyyy-MM-ddTHH:mm:ss').parse(date);

String? getWeekDayInitials(int day) {
  switch (day) {
    case 1:
      return 'Seg';
    case 2:
      return 'Ter';
    case 3:
      return 'Qua';
    case 4:
      return 'Qui';
    case 5:
      return 'Sex';
    case 6:
      return 'Sáb';
    case 7:
      return 'Dom';
  }
  return null;
}

String? getMonthInitials(int month) {
  switch (month) {
    case 1:
      return 'Jan';
    case 2:
      return 'Fev';
    case 3:
      return 'Mar';
    case 4:
      return 'Abr';
    case 5:
      return 'Mai';
    case 6:
      return 'Jun';
    case 7:
      return 'Jul';
    case 8:
      return 'Ago';
    case 9:
      return 'Set';
    case 10:
      return 'Out';
    case 11:
      return 'Nov';
    case 12:
      return 'Dez';
  }
  return null;
}
