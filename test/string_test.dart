import 'package:idkit_timeformat/idkit_timeformat.dart';

void main() {
  final a = IDKitTimeFormat.fromString('1614237890000');
  print(a);

  final b = IDKitTimeFormat.fromString('1614237890000',
      format: 'YYYY-MM-DD HH:mm:ss');
  print(b);

  final c = IDKitTimeFormat.fromString('1614237890000',
      format: 'YYYY-MM-DD hh:mm:ss');
  print(c);

  final d = IDKitTimeFormat.fromString('1614237890000',
      format: 'YYYY-MM-dd hh:mm:ss');
  print(d);

  final e = IDKitTimeFormat.fromString('1614237890000',
      format: 'yyyy-MM-dd hh:mm:ss');
  print(e);

  final f = IDKitTimeFormat.fromString('1614237890000', format: 'yy-M-d h:m:s');
  print(f);

  final g =
      IDKitTimeFormat.fromString('1614237890000', format: 'yy-MM-dd hh:mm:ss');
  print(g);

  final h = IDKitTimeFormat.fromString('1614237890000', format: 'yyyy-MM-dd');
  print(h);

  final i = IDKitTimeFormat.fromString('1614237890000', format: 'yyyy-MM-DD');
  print(i);

  final j = IDKitTimeFormat.fromString('1614237890000', format: 'yyyy-MM');
  print(j);

  final k = IDKitTimeFormat.fromString('1614237890000', format: 'hh:mm:ss');
  print(k);

  final l = IDKitTimeFormat.fromString('1614237890000', format: 'h:m:s');
  print(l);
}
