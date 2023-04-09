import 'package:flutter_test/flutter_test.dart';

import 'package:internet_time/internet_time.dart';

void main() {
  test('beats from time', () {
    final input = DateTime.utc(2015, 5, 14, 12, 35, 43, 0);
    const output = 566;
    final beats = InternetTime();
    expect(beats.fromTime(input), output);
  });
  test('string from beats', () {
    const input = 14;
    const output = "@14";
    final beats = InternetTime();
    expect(beats.string(input), output);
  });
  test('beats from BMT', () {
    final input = DateTime.utc(2012, 4, 11, 16, 45, 51, 0);
    final output = DateTime.utc(2012, 4, 11, 17, 45, 51, 0);
    final beats = InternetTime();
    expect(beats.toBmt(input), output);
  });
}
