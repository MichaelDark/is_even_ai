import 'dart:io';

import 'package:is_even_ai/is_even_ai.dart';
import 'package:openai_dart/openai_dart.dart';

/// ✨OpenAI✨ implementation to check if a number is even.
final class IsEvenAiOpenAiDart implements IsEvenAi {
  final OpenAIClient _client;
  final ChatCompletionModel _model;

  /// Create instance of OpenAI implementation.
  ///
  /// Optional:
  /// - [model], default to gpt-3.5-turbo
  const IsEvenAiOpenAiDart(
    OpenAIClient client, {
    ChatCompletionModel? model,
  })  : _client = client,
        _model = model ??
            const ChatCompletionModel.model(ChatCompletionModels.gpt35Turbo);

  @override
  Future<bool> isEven(num value) =>
      _askBinaryChoiceQuestion('Is $value an even number?');

  @override
  Future<bool> isOdd(num value) =>
      _askBinaryChoiceQuestion('Is $value an odd number?');

  @override
  Future<bool> areEqual(num a, num b) =>
      _askBinaryChoiceQuestion('Are $a and $b equal?');

  @override
  Future<bool> areNotEqual(num a, num b) =>
      _askBinaryChoiceQuestion('Are $a and $b not equal?');

  @override
  Future<bool> isGreaterThan(num a, num b) =>
      _askBinaryChoiceQuestion('Is $a greater than $b?');

  @override
  Future<bool> isLessThan(num a, num b) =>
      _askBinaryChoiceQuestion('Is $a less than $b?');

  Future<bool> _askBinaryChoiceQuestion(String prompt) async {
    final res = await _client.createChatCompletion(
      request: CreateChatCompletionRequest(
        model: _model,
        messages: [
          ChatCompletionMessage.system(
            content: 'You are an AI assistant '
                'designed to answer questions about numbers. '
                'You will only answer with only the word true or false.',
          ),
          ChatCompletionMessage.user(
            content: ChatCompletionUserMessageContent.string(prompt),
          ),
        ],
        temperature: 0,
      ),
    );

    final response = res.choices.first.message.content?.toLowerCase();
    return switch (response) {
      'true' => true,
      'false' => false,
      _ => throw SocketException("Something went wrong with OpenAI"),
    };
  }
}
