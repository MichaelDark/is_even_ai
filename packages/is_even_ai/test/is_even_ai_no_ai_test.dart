import 'package:test/test.dart';

import '../lib/is_even_ai.dart';

void main() {
  test(
    'IsEvenAiNoAi test',
    () async {
      final IsEvenAi isEvenAi = IsEvenAiNoAi();

      expect(await isEvenAi.isEven(2), true);
      expect(await isEvenAi.isEven(3), false);
      expect(await isEvenAi.isOdd(4), false);
      expect(await isEvenAi.isOdd(5), true);
      expect(await isEvenAi.areEqual(6, 6), true);
      expect(await isEvenAi.areEqual(6, 7), false);
      expect(await isEvenAi.areNotEqual(6, 7), true);
      expect(await isEvenAi.areNotEqual(7, 7), false);
      expect(await isEvenAi.isGreaterThan(8, 7), true);
      expect(await isEvenAi.isGreaterThan(7, 8), false);
      expect(await isEvenAi.isLessThan(8, 9), true);
      expect(await isEvenAi.isLessThan(9, 8), false);
    },
  );
}
