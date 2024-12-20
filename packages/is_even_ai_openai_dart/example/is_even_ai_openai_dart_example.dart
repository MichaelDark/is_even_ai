import 'package:is_even_ai/is_even_ai.dart';
import 'package:is_even_ai_openai_dart/is_even_ai_openai_dart.dart';
import 'package:openai_dart/openai_dart.dart';

void main() async {
  IsEvenAi.global = IsEvenAiOpenAiDart(
    OpenAIClient(
      apiKey: 'sk-proj-XXX',
      organization: 'org-XXX',
    ),
    model: ChatCompletionModel.model(ChatCompletionModels.gpt35Turbo),
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
