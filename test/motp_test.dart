import 'package:motp/motp.dart';
import 'package:test/test.dart';

void main() {
  group('MOTP', () {
    test('Empty secret and empty pin', () {
      expect(() => MOTP(secret: '', pin: ''), returnsNormally);
    });
    test('unixSeconds out of range', () {
      expect(() => MOTP(secret: '', pin: '').generate(-1), throwsArgumentError);
    });
    test('period out of range', () {
      expect(() => MOTP(secret: '', pin: '', period: 0), throwsArgumentError);
    });
    test('digits out of range', () {
      expect(() => MOTP(secret: '', pin: '', digits: 0), throwsArgumentError);
    });
    test('16-digit upper-case secret and 4-digit pin at 42 seconds', () {
      expect(
          MOTP(secret: '0123456789ABCDEF', pin: '1234').generate(42), 'BC0BE8');
    });
    test('16-digit lower-case secret and 4-digit pin at 42 seconds', () {
      expect(
          MOTP(secret: '0123456789abcdef', pin: '1234').generate(42), 'A0507C');
    });
  });
}
