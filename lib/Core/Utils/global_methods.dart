import 'package:intl/intl.dart';

class GlobalMethods {
  static String formattedDateText(String time) {
    final parsedData = DateTime.parse(time);
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(parsedData);
    DateTime weatherTime =
        DateFormat('yyyy-MM-dd HH:mm:ss').parse(formattedDate);

    if (weatherTime.hour.toString().length == 1) {
      return '0${weatherTime.hour}:${weatherTime.minute}0';
    } else {
      return '${weatherTime.hour}:${weatherTime.minute}0';
    }
  }
}
