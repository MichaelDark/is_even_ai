import 'package:test/test.dart';

import '../lib/is_even_ai.dart';

void main() {
  group('Global accessor', () {
    test('should throw if uninitialized', () {
      expect(() => IsEvenAi.global, throwsA(isA<StateError>()));
    });

    test('should NOT throw if initialized', () {
      final instance = MockIsEvenAi();
      IsEvenAi.global = instance;
      expect(IsEvenAi.global, equals(instance));
    });
  });
}

class MockIsEvenAi implements IsEvenAi {
  @override
  Future<bool> areEqual(num a, num b) {
    throw UnimplementedError();
  }

  @override
  Future<bool> areNotEqual(num a, num b) {
    throw UnimplementedError();
  }

  @override
  Future<bool> isEven(num value) {
    throw UnimplementedError();
  }

  @override
  Future<bool> isGreaterThan(num a, num b) {
    throw UnimplementedError();
  }

  @override
  Future<bool> isLessThan(num a, num b) {
    throw UnimplementedError();
  }

  @override
  Future<bool> isOdd(num value) {
    throw UnimplementedError();
  }
}
