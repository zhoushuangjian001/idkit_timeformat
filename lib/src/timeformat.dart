import 'package:idkit_timeformat/src/time_extension.dart';

class IDKitTimeFormat with TimeFormatMixin {
  static String fromString(
    String time, {
    String format = 'yyyy-MM-dd hh:mm:ss',
    TimeUnit timeUnit = TimeUnit.millisecond,
  }) {
    final int? timeValue = int.tryParse(time);
    assert(timeValue != null,
        'Invalid time string.Please check whether the string is all numbers.');
    late IDKitTimeFormat idkitTimeFormat = IDKitTimeFormat();
    final DateTime dateTime = idkitTimeFormat.dateFromInt(timeValue!, timeUnit);
    return idkitTimeFormat.stringFrom(dateTime, format);
  }

  static String fromNow({
    String format = 'yyyy-MM-dd hh:mm:ss',
  }) {
    final DateTime dateTime = DateTime.now();
    late IDKitTimeFormat idkitTimeFormat = IDKitTimeFormat();
    return idkitTimeFormat.stringFrom(dateTime, format);
  }

  static String fromInt(
    int time, {
    String format = 'yyyy-MM-dd hh:mm:ss',
    TimeUnit timeUnit = TimeUnit.millisecond,
  }) {
    late IDKitTimeFormat idkitTimeFormat = IDKitTimeFormat();
    final DateTime dateTime = idkitTimeFormat.dateFromInt(time, timeUnit);
    return idkitTimeFormat.stringFrom(dateTime, format);
  }
}

/// Time unit.
enum TimeUnit {
  microsecond,
  millisecond,
  second,
}
