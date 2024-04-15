import 'package:motp/motp.dart';

void main() {
  final MOTP motp = MOTP(
    secret: '0123456789ABCDEF',
    pin: '1234',
    period: 10,
    digits: 6,
  );

  // By default, the current epoch time will be used.
  String code = motp.generate();
  print(code); // OUTPUT: 6-digit hexadecimal string.

  // This behavior can be overridden by passing in [unixSeconds] explicitly.
  final int unixSeconds = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  code = motp.generate(unixSeconds);
  print(code); // OUTPUT: 6-digit hexadecimal string.
}
