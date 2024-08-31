part of 'package:ext_utils/ext_utils.dart';

/// Extension for [List] class that adds useful methods.
///
extension ListExt on List? {
  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }

  /// Returns a new list of the provided list into chunks of the provided size.
  ///
  /// ### Example:
  ///
  /// [1, 2, 3, 4, 5, 6].chunk(2) will return [[1, 2], [3, 4], [5, 6]].
  ///
  List<List<T>> chunk<T>(int size) {
    if (isNullOrEmpty()) {
      throw Exception('Cannot chunk a null or empty list');
    }

    if (size <= 0) {
      throw Exception('Cannot chunk a list into chunks of size 0 or less');
    }

    List<List<T>> chunks = [];
    for (int i = 0; i < this!.length; i += size) {
      chunks.add(
          (this!.sublist(i, i + size > this!.length ? this!.length : i + size)
              as List<T>));
    }

    return chunks;
  }

  /// Returns a list of distinct elements from the provided list.
  ///
  /// ### Example:
  ///
  /// [1, 2, 3, 1, 2, 3, 4, 5].distinct() will return [1, 2, 3, 4, 5].
  ///
  List<T> distinct<T>() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot get distinct elements from a null or empty list');
    }

    return (this!.toSet().toList() as List<T>);
  }

  /// Flatten a list of lists into a single list.
  ///
  /// ### Example:
  ///
  /// [[1, 2], [3, 4], [5, 6]].flatten() will return [1, 2, 3, 4, 5, 6].
  ///
  List<T> flatten<T>() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot flatten a null or empty list');
    }

    List<T> flattened = [];
    for (var element in this!) {
      if (element is List) {
        flattened.addAll(element.flatten());
      } else {
        flattened.add(element);
      }
    }

    return flattened;
  }

  /// Gets the median of a list with numbers.
  ///
  /// ### Example:
  ///
  /// [1, 2, 3, 4, 5].median() will return 3.
  /// [1, 2, 3, 4].median() will return 2.5.
  ///
  T median<T extends num>() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot get the median of a null or empty list');
    }

    if (this!.any((element) => element is! num)) {
      throw Exception(
          'Cannot get the median of a list that contains non-numeric elements');
    }

    List<T> sorted = List.from(this as List<T>)..sort();
    int middle = sorted.length ~/ 2;
    if (sorted.length.isEven) {
      return (sorted[middle - 1] + sorted[middle]) / 2 as T;
    } else {
      return sorted[middle];
    }
  }

  /// Gets the average of a list with numbers.
  ///
  /// ### Example:
  ///
  /// [1, 2, 3, 4, 5].average() will return 3.
  /// [87, 40, 30, 20].average() will return 44.25.
  ///
  double average() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot get the average of a null or empty list');
    }

    if (this!.any((element) => element is! num)) {
      throw Exception(
          'Cannot get the average of a list that contains non-numeric elements');
    }

    num sum = this!.sum();

    return (sum / this!.length);
  }

  /// Gets the sum of a list with numbers.
  ///
  /// ### Example:
  ///
  /// [1, 2, 3, 4, 5].sum() will return 15.
  ///
  T sum<T extends num>() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot get the sum of a null or empty list');
    }

    if (this!.any((element) => element is! num)) {
      throw Exception(
          'Cannot get the sum of a list that contains non-numeric elements');
    }

    List<T> sorted = List.from(this as List<T>);

    return sorted.reduce((value, element) => (value + element) as T);
  }

  /// Gets the range of a list with numbers.
  ///
  /// ### Example:
  ///
  /// [1, 2, 3, 4, 5].range() will return 4.
  ///
  T range<T extends num>() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot get the range of a null or empty list');
    }

    if (this!.any((element) => element is! num)) {
      throw Exception(
          'Cannot get the range of a list that contains non-numeric elements');
    }

    List<T> sorted = List.from(this as List<T>);

    return sorted.last - sorted.first as T;
  }
}
