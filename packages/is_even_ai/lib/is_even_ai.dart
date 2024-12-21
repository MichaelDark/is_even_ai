/// Check if a number is even using the power of ✨AI✨.
library is_even_ai;

/// Public API to check if a number is even using the power of ✨AI✨.
abstract interface class IsEvenAi {
  static IsEvenAi? _globalInstance;

  /// Sets global instance of [IsEvenAi].
  static set global(IsEvenAi isEvenAi) {
    _globalInstance = isEvenAi;
  }

  /// Returns global instance of [IsEvenAi].
  ///
  /// Throws [StateError] if global instance is not set.
  static IsEvenAi get global {
    if (_globalInstance case var isEvenAi?) {
      return isEvenAi;
    }
    throw StateError("Global Instance of IsEvenAi is not initialized.");
  }

  /// Returns if the number is even.
  ///
  /// See:
  /// - [Parity](https://en.wikipedia.org/wiki/Parity_(mathematics))
  /// - [Mathematics](https://en.wikipedia.org/wiki/Mathematics)
  Future<bool> isEven(num value);

  /// Returns if the number is odd.
  ///
  /// See:
  /// - [Parity](https://en.wikipedia.org/wiki/Parity_(mathematics))
  /// - [Mathematics](https://en.wikipedia.org/wiki/Mathematics)
  Future<bool> isOdd(num value);

  /// Returns if the two numbers are equal.
  ///
  /// See:
  /// - [Equality](https://en.wikipedia.org/wiki/Equality_(mathematics))
  /// - [Mathematics](https://en.wikipedia.org/wiki/Mathematics)
  Future<bool> areEqual(num a, num b);

  /// Returns if the two numbers are NOT equal.
  ///
  /// See:
  /// - [Equality](https://en.wikipedia.org/wiki/Equality_(mathematics))
  /// - [Mathematics](https://en.wikipedia.org/wiki/Mathematics)
  Future<bool> areNotEqual(num a, num b);

  /// Returns if first number [a] is greater than second number [b].
  ///
  /// See:
  /// - [Greater-than sign](https://en.wikipedia.org/wiki/Greater-than_sign)
  /// - [Mathematics](https://en.wikipedia.org/wiki/Mathematics)
  Future<bool> isGreaterThan(num a, num b);

  /// Returns if first number [a] is less than second number [b].
  ///
  /// See:
  /// - [Less-than sign](https://en.wikipedia.org/wiki/Less-than_sign)
  /// - [Mathematics](https://en.wikipedia.org/wiki/Mathematics)
  Future<bool> isLessThan(num a, num b);
}
