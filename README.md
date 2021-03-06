# idkit_timeformat

### Introduce

This is a toolkit for time formatting, which can output time strings in common formats and custom formats.

### Function method

##### 1. Obtain the time output in a defined format through a timestamp in the form of a string.

```dart
formString(String time, {String format,TimeUnit timeUnit}) -> String
```

##### 2. Get the output string in the specified format at the current time.

```dart
fromNow({String format}) -> String
```

##### 3. Get the string output in the specified format through the digital timestamp.

```dart
formInt(String time, {String format,TimeUnit timeUnit}) -> String
```

### Unit of time

```dart
/// Time unit.
enum TimeUnit {
  microsecond,
  millisecond,
  second,
}
```

## Instance

##### 1. String timestamp

```dart
/// 1. String timestamp
void toStringTimeStamp() {
  final String time1 = IDKitTimeFormat.fromInt(timeValue);
  print(time1); // 2021-11-30 17:12:00

  final String time2 = IDKitTimeFormat.fromInt(timeValue, format: 'YYYY-MM-dd');
  print(time2); // 2021-11-30
  final String time21 =
      IDKitTimeFormat.fromInt(timeValue, format: 'YYYY/MM/dd');
  print(time21); // 2021/11/30

  final String time3 = IDKitTimeFormat.fromInt(timeValue, format: 'YY-M-d');
  print(time3); // 21-11-30

  final String time4 = IDKitTimeFormat.fromInt(timeValue, format: 'hh:mm:ss');
  print(time4); // 17:12:00

  final String time5 = IDKitTimeFormat.fromInt(timeValue, format: 'YYYY');
  print(time5); // 2021

  final String time6 = IDKitTimeFormat.fromInt(timeValue, format: 'MM');
  print(time6); // 11
}
```

##### 2. Current timestamp

```dart
/// 2. Current timestamp
void currentTimestamp() {
  final String time1 = IDKitTimeFormat.fromNow();
  print(time1); // 2021-11-30 17:12:00

  final String time2 = IDKitTimeFormat.fromNow(format: 'YYYY-MM-dd');
  print(time2); // 2021-11-30
  final String time21 = IDKitTimeFormat.fromNow(format: 'YYYY/MM/dd');
  print(time21); // 2021/11/30

  final String time3 = IDKitTimeFormat.fromNow(format: 'YY-M-d');
  print(time3); // 21-11-30

  final String time4 = IDKitTimeFormat.fromNow(format: 'hh:mm:ss');
  print(time4); // 17:12:00

  final String time5 = IDKitTimeFormat.fromNow(format: 'YYYY');
  print(time5); // 2021

  final String time6 = IDKitTimeFormat.fromNow(format: 'MM');
  print(time6); // 11
}
```

##### 3. Timestamp

```dart
/// 3. Timestamp
void timestamp() {
  final String time1 = IDKitTimeFormat.fromInt(timeValue);
  print(time1); // 2021-11-30 17:12:00

  final String time2 = IDKitTimeFormat.fromInt(timeValue, format: 'YYYY-MM-dd');
  print(time2); // 2021-11-30
  final String time21 =
      IDKitTimeFormat.fromInt(timeValue, format: 'YYYY/MM/dd');
  print(time21); // 2021/11/30

  final String time3 = IDKitTimeFormat.fromInt(timeValue, format: 'YY-M-d');
  print(time3); // 21-11-30

  final String time4 = IDKitTimeFormat.fromInt(timeValue, format: 'hh:mm:ss');
  print(time4); // 17:12:00

  final String time5 = IDKitTimeFormat.fromInt(timeValue, format: 'YYYY');
  print(time5); // 2021

  final String time6 = IDKitTimeFormat.fromInt(timeValue, format: 'MM');
  print(time6); // 11
}
```
