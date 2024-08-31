part of 'package:ext_utils/ext_utils.dart';

/// Extension on [double] to add useful methods.
///
extension DoubleExt on double {
  /// Returns whether the non-fractional part of this number is even.
  ///
  /// ### Example:
  ///
  /// 5.33 will return false, while 6.33 will return true.
  ///
  bool isEven() {
    return truncate().isEven;
  }

  /// Returns whether the non-fractional part of this number is odd.
  ///
  /// ### Example:
  ///
  /// 5.33 will return true, while 6.33 will return false.
  ///
  bool isOdd() {
    return truncate().isOdd;
  }

  /// Returns the currency representation of this number.
  ///
  /// ### Example:
  ///
  /// 5.33.toCurrencyString() will return '\$5.33'.
  ///
  String toCurrencyString({String symbol = '\$', int decimalPlaces = 2}) {
    return '$symbol${toStringAsFixed(decimalPlaces)}';
  }

  /// Returns the currency representation of this number as a double.
  ///
  /// ### Example:
  ///
  /// 5.33345.toCurrency() will return 5.33.
  ///
  double toCurrency() {
    return double.parse(toStringAsFixed(2));
  }
}
