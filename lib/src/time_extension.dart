import 'package:idkit_timeformat/idkit_timeformat.dart';

mixin TimeFormatMixin {
  /// Get time object with timestamp.
  ///
  /// [time] Timestamp.
  /// [unit] Timestamp unit.
  DateTime dateFromInt(int time, TimeUnit unit) {
    late DateTime dateTime;

    switch (unit) {
      case TimeUnit.microsecond:
        dateTime = DateTime.fromMicrosecondsSinceEpoch(time);
        break;
      case TimeUnit.millisecond:
        dateTime = DateTime.fromMillisecondsSinceEpoch(time);
        break;
      case TimeUnit.second:
        dateTime = DateTime.fromMillisecondsSinceEpoch(time * 1000);
        break;
      default:
        dateTime = DateTime.now();
    }
    return dateTime;
  }

  /// Get the time formatting result in the specified format.
  ///
  String stringFrom(DateTime dateTime, String format) {
    late String result = format;
    // Year handle.
    if (result.contains('yyyy') || result.contains('YYYY')) {
      final int year = dateTime.year;
      result = result.replaceFirst(RegExp(r'(yyyy|YYYY)'), year.toString());
    }
    if (result.contains('yy') || result.contains('YY')) {
      final int year = dateTime.year;
      final int yearRes = (year - 1000) % 100;
      // Insufficient processing bits, zero padding.
      final String yearStr = yearRes.toString();
      result = result.replaceFirst(RegExp(r'(yy|YY)'), yearStr.padLeft(2, '0'));
    }
    // Month handle.
    if (result.contains('MM')) {
      final int month = dateTime.month;
      // Insufficient processing bits, zero padding.
      final String monthStr = month.toString();
      result = result.replaceFirst(RegExp(r'(MM)'), monthStr.padLeft(2, '0'));
    }
    if (result.contains('M')) {
      final int month = dateTime.month;
      result = result.replaceFirst(RegExp(r'M'), month.toString());
    }

    // Day handle.
    if (result.contains('dd') || result.contains('DD')) {
      final int day = dateTime.day;
      // Insufficient processing bits, zero padding.
      final String dayStr = day.toString();
      result = result.replaceFirst(RegExp(r'(DD|dd)'), dayStr.padLeft(2, '0'));
    }
    if (result.contains('d') || result.contains('D')) {
      final int day = dateTime.day;
      result = result.replaceFirst(RegExp(r'(d|D)'), day.toString());
    }

    // Hour handle.
    if (result.contains('hh') || result.contains('HH')) {
      final int hour = dateTime.hour;
      // Insufficient processing bits, zero padding.
      final String hourStr = hour.toString();
      result = result.replaceFirst(RegExp(r'(HH|hh)'), hourStr.padLeft(2, '0'));
    }
    if (result.contains('H') || result.contains('h')) {
      final int hour = dateTime.hour;
      result = result.replaceFirst(RegExp(r'(H|h)'), hour.toString());
    }

    // Minute handle.
    if (result.contains('mm')) {
      final int minute = dateTime.minute;
      // Insufficient processing bits, zero padding.
      final String minuteStr = minute.toString();
      result = result.replaceFirst(RegExp(r'mm'), minuteStr.padLeft(2, '0'));
    }
    if (result.contains('m')) {
      final int minute = dateTime.minute;
      result = result.replaceFirst(RegExp(r'm'), minute.toString());
    }

    // Second handle.
    if (result.contains('ss')) {
      final int second = dateTime.second;
      // Insufficient processing bits, zero padding.
      final String secondStr = second.toString();
      result = result.replaceFirst(RegExp(r'ss'), secondStr.padLeft(2, '0'));
    }
    if (result.contains('s')) {
      final int second = dateTime.second;
      result = result.replaceFirst(RegExp(r's'), second.toString());
    }
    return result;
  }
}
