import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:is_even_ai/is_even_ai.dart';
import 'package:is_even_ai_firebase_vertexai/is_even_ai_firebase_vertexai.dart';
import 'package:test/test.dart';

void main() {
  test(
    'IsEvenAiFirebaseVertexAi test',
    () async {
      final IsEvenAi isEvenAi = IsEvenAiFirebaseVertexAi(
        model: FirebaseVertexAI.instance.generativeModel(
          model: 'gemini-1.5-flash',
        ),
      );

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
    skip: true,
  );
}
