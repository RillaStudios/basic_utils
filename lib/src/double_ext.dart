part of 'package:basic_utils/basic_utils.dart';

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

  String toCurrencyString({String symbol = '\$', int decimalPlaces = 2}) {
    return '$symbol${toStringAsFixed(decimalPlaces)}';
  }

  double toCurrency() {
    return double.parse(toStringAsFixed(2));
  }
}
