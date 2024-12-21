# is_even_ai

Dart implementation of [`is-even-ai`](https://github.com/Calvin-LL/is-even-ai).  
Inspired by the famous [`is-even`](https://www.npmjs.com/package/is-even) npm package and [this tweet](https://twitter.com/erenbali/status/1766602689863950658).

[![is_even_ai](https://img.shields.io/pub/v/is_even_ai?label=is_even_ai)](https://pub.dev/packages/is_even_ai)  
[![is_even_ai_openai_dart](https://img.shields.io/pub/v/is_even_ai_openai_dart?label=is_even_ai_openai_dart)](https://pub.dev/packages/is_even_ai_openai_dart)
[![is_even_ai_firebase_vertexai](https://img.shields.io/pub/v/is_even_ai_firebase_vertexai?label=is_even_ai_firebase_vertexai)](https://pub.dev/packages/is_even_ai_firebase_vertexai)


Check if a number is even using the power of ✨AI✨.

Uses OpenAI to determine if a number is even.

For all those who want to use AI in their product but don't know how.

## Usage

```dart
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

```

## Supported AI platforms

Feel free to make a PR to add more AI platforms.

- [`is_even_ai`](https://pub.dev/packages/is_even_ai)
  - Base API
- [`is_even_ai_openai_dart`](https://pub.dev/packages/is_even_ai_openai_dart)
  - [OpenAI](https://openai.com) 
- [`is_even_ai_firebase_vertexai`](https://pub.dev/packages/is_even_ai_firebase_vertexai)
  - [Firebase VertexAI](https://firebase.google.com/products/vertex-ai-in-firebase) 

## Supported methods

- `Future<bool> isEven(num value)`
- `Future<bool> isOdd(num value)`
- `Future<bool> areEqual(num a, num b)`
- `Future<bool> areNotEqual(num a, num b)`
- `Future<bool> isGreaterThan(num a, num b)`
- `Future<bool> isLessThan(num a, num b)`

## Support

<a href="https://www.buymeacoffee.com/michaeldark" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
