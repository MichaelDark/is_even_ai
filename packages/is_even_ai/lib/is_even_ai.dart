library is_even_ai;

abstract interface class IsEvenAi {
  static IsEvenAi global = const IsEvenAiNoAi();

  Future<bool> isEven(num value);
  Future<bool> isOdd(num value);
  Future<bool> areEqual(num a, num b);
  Future<bool> areNotEqual(num a, num b);
  Future<bool> isGreaterThan(num a, num b);
  Future<bool> isLessThan(num a, num b);
}

/// The true impostor.
///
/// Consider using this only as a fail-safe until you initialize your AI API.
///
/// No mercy for the non-AI API!
final class IsEvenAiNoAi implements IsEvenAi {
  const IsEvenAiNoAi();

  @override
  Future<bool> isEven(num value) async => value % 2 == 0;
  @override
  Future<bool> isOdd(num value) async => value % 2 != 0;
  @override
  Future<bool> areEqual(num a, num b) async => a == b;
  @override
  Future<bool> areNotEqual(num a, num b) async => a != b;
  @override
  Future<bool> isGreaterThan(num a, num b) async => a > b;
  @override
  Future<bool> isLessThan(num a, num b) async => a < b;
}
