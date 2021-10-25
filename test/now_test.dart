import 'package:idkit_timeformat/idkit_timeformat.dart';

void main() {
  final a = IDKitTimeFormat.fromNow();
  print(a);

  final b = IDKitTimeFormat.fromNow(format: 'YYYY-MM-DD HH:mm:ss');
  print(b);

  final c = IDKitTimeFormat.fromNow(format: 'YYYY-MM-DD hh:mm:ss');
  print(c);

  final d = IDKitTimeFormat.fromNow(format: 'YYYY-MM-dd hh:mm:ss');
  print(d);

  final e = IDKitTimeFormat.fromNow(format: 'yyyy-MM-dd hh:mm:ss');
  print(e);

  final f = IDKitTimeFormat.fromNow(format: 'yy-M-d h:m:s');
  print(f);

  final g = IDKitTimeFormat.fromNow(format: 'yy-MM-dd hh:mm:ss');
  print(g);

  final h = IDKitTimeFormat.fromNow(format: 'yyyy-MM-dd');
  print(h);

  final i = IDKitTimeFormat.fromNow(format: 'yyyy-MM-DD');
  print(i);

  final j = IDKitTimeFormat.fromNow(format: 'yyyy-MM');
  print(j);

  final k = IDKitTimeFormat.fromNow(format: 'hh:mm:ss');
  print(k);

  final l = IDKitTimeFormat.fromNow(format: 'h:m:s');
  print(l);
}
