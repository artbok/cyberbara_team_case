import 'package:test/test.dart';
import 'package:cyberbara_team_case/utils/math_utils.dart';

void main() {
  group('arithmeticMean', () {
    test('test1', () {
      expect(arithmeticMean([1, 2, 3, 4, 5]), equals(3.0));
    });

    test('test2', () {
      expect(arithmeticMean([-1, -2, -3, -4, -5]), equals(3.0));
    });

    test('test3', () {
      expect(sum(2, 2), equals(4));
    });
  });
}