import 'package:idkit_timeformat/idkit_timeformat.dart';

void main() {
  final a = IDKitTimeFormat.fromInt(1635146690000);
  print(a);

  final b =
      IDKitTimeFormat.fromInt(1635146690000, format: 'YYYY-MM-DD HH:mm:ss');
  print(b);

  final c =
      IDKitTimeFormat.fromInt(1635146690000, format: 'YYYY-MM-DD hh:mm:ss');
  print(c);

  final d =
      IDKitTimeFormat.fromInt(1635146690000, format: 'YYYY-MM-dd hh:mm:ss');
  print(d);

  final e =
      IDKitTimeFormat.fromInt(1635146690000, format: 'yyyy-MM-dd hh:mm:ss');
  print(e);

  final f = IDKitTimeFormat.fromInt(1635146690000, format: 'yy-M-d h:m:s');
  print(f);

  final g = IDKitTimeFormat.fromInt(1635146690000, format: 'yy-MM-dd hh:mm:ss');
  print(g);

  final h = IDKitTimeFormat.fromInt(1635146690000, format: 'yyyy-MM-dd');
  print(h);

  final i = IDKitTimeFormat.fromInt(1635146690000, format: 'yyyy-MM-DD');
  print(i);

  final j = IDKitTimeFormat.fromInt(1635146690000, format: 'yyyy-MM');
  print(j);

  final k = IDKitTimeFormat.fromInt(1635146690000, format: 'hh:mm:ss');
  print(k);

  final l = IDKitTimeFormat.fromInt(1635146690000, format: 'h:m:s');
  print(l);
}
