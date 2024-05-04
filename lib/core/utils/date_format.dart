import 'package:intl/intl.dart';

class CustomDateFormat {
  static String formatDate(DateTime date) {
    String formattedDate = DateFormat.yMMMMd().format(date);
    return formattedDate;
  }

  static String normalDate(DateTime date) {
    String formattedDate = date.toString().substring(0, 10);
    return formattedDate;
  }

  static String formatHour(DateTime date) {
    String formattedDate = DateFormat.jm().format(date);
    return formattedDate;
  }
}
