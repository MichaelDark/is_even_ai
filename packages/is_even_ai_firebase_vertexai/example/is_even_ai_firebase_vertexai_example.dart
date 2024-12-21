import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:is_even_ai/is_even_ai.dart';
import 'package:is_even_ai_firebase_vertexai/is_even_ai_firebase_vertexai_dart.dart';

void main() async {
  IsEvenAi.global = IsEvenAiFirebaseVertexAi(
    model: FirebaseVertexAI.instance.generativeModel(
      model: 'gemini-1.5-flash',
    ),
  );

  print(await IsEvenAi.global.isEven(2)); // true
  print(await IsEvenAi.global.isEven(3)); // false
  print(await IsEvenAi.global.isOdd(4)); // false
  print(await IsEvenAi.global.isOdd(5)); // true
  print(await IsEvenAi.global.areEqual(6, 6)); // true
  print(await IsEvenAi.global.areEqual(6, 7)); // false
  print(await IsEvenAi.global.areNotEqual(6, 7)); // true
  print(await IsEvenAi.global.areNotEqual(7, 7)); // false
  print(await IsEvenAi.global.isGreaterThan(8, 7)); // true
  print(await IsEvenAi.global.isGreaterThan(7, 8)); // false
  print(await IsEvenAi.global.isLessThan(8, 9)); // true
  print(await IsEvenAi.global.isLessThan(9, 8)); // false
}
