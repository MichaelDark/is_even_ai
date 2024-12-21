import 'dart:io';

import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:is_even_ai/is_even_ai.dart';

/// ✨Firebase VertexAI✨ implementation to check if a number is even.
final class IsEvenAiFirebaseVertexAi implements IsEvenAi {
  final GenerativeModel _model;

  /// Create instance of Firebase VertexAI implementation.
  const IsEvenAiFirebaseVertexAi({
    required GenerativeModel model,
  }) : _model = model;

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
    final promptList = [
      Content.system(
        'You are an AI assistant '
        'designed to answer questions about numbers. '
        'You will only answer with only the word true or false.',
      ),
      Content.text(prompt),
    ];

    final response = await _model.generateContent(promptList);

    return switch (response.text) {
      'true' => true,
      'false' => false,
      _ => throw SocketException("Something went wrong"),
    };
  }
}
