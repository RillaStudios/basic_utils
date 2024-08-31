part of 'package:basicutils/basic_utils.dart';

/// Extension on [String] to add useful methods.
///
extension StringExt on String? {
  /// Returns whether this string is null or empty.
  ///
  /// ### Example:
  ///
  /// ''.isNullOrEmpty() will return true.
  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }

  /// Determines weather a string is equal to another string ignoring the case.
  ///
  /// You can also choose to trim the strings before comparing them.
  ///
  /// ### Example (with trimming):
  ///
  /// 'Hello, World!      '.equalsIgnoreCase('hello, world!', trim: true) will return true.
  ///
  /// ### Example (without trim):
  ///
  /// 'Hello, World!'.equalsIgnoreCase('hello, world!') will return true.
  ///
  bool equalsIgnoreCase(String other, {bool trim = false}) {
    if (isNullOrEmpty()) {
      throw Exception('Cannot compare a null or empty string');
    }

    if (trim) {
      return this!.trim().toLowerCase() == other.trim().toLowerCase();
    }

    return this!.toLowerCase() == other.toLowerCase();
  }

  /// Capitalizes the first letter of the string.
  ///
  /// ### Example:
  ///
  /// 'hello, world!'.capitalizeFirst() will return 'Hello, world!'.
  ///
  String capitalizeFirst() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot capitalize the first letter of a null or empty string');
    }

    return this!.substring(0, 1).toUpperCase() + this!.substring(1);
  }

  /// Capitalizes the first letter of each word in the string.
  ///
  /// ### Example:
  ///
  /// 'hello, world!'.capitalizeFirstEach() will return 'Hello, World!'.
  ///
  String capitalizeFirstEach() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot capitalize the first letter of each word of a null or empty string');
    }

    return this!.split(' ').map((word) => word.capitalizeFirst()).join(' ');
  }

  /// Returns whether this string contains the given [pattern].
  ///
  /// ### Example:
  ///
  /// 'Hello, World!'.includes('World') will return true.
  ///
  /// ### Note:
  ///
  /// This method uses the Knuth-Morris-Pratt algorithm to find the pattern in the text.
  /// Which is more efficient than the naive approach.
  ///
  bool includes(String pattern) {
    if (isNullOrEmpty() || pattern.isEmpty) {
      return false;
    }

    List<int> prefixFunction(String pattern) {
      int m = pattern.length;
      List<int> pi = List.filled(m, 0);
      int k = 0;

      for (int i = 1; i < m; i++) {
        while (k > 0 && pattern[k] != pattern[i]) {
          k = pi[k - 1];
        }
        if (pattern[k] == pattern[i]) {
          k++;
        }
        pi[i] = k;
      }

      return pi;
    }

    String text = this!;
    int n = text.length;
    int m = pattern.length;
    List<int> pi = prefixFunction(pattern);
    int q = 0;

    for (int i = 0; i < n; i++) {
      while (q > 0 && pattern[q] != text[i]) {
        q = pi[q - 1];
      }
      if (pattern[q] == text[i]) {
        q++;
      }
      if (q == m) {
        return true;
      }
    }

    return false;
  }

  /// Returns whether this string contains the given [pattern] ignoring the case.
  ///
  /// ### Example:
  ///
  /// 'Hello, World!'.includesIgnoreCase('world') will return true.
  ///
  /// ### Note:
  ///
  /// This method uses the Knuth-Morris-Pratt algorithm to find the pattern in the text.
  /// Which is more efficient than the naive approach.
  ///
  bool includesIgnoreCase(String pattern) {
    if (isNullOrEmpty() || pattern.isEmpty) {
      return false;
    }

    return this!.toLowerCase().includes(pattern.toLowerCase());
  }

  /// Returns weather this string contains only numbers.
  ///
  /// ### Example:
  ///
  /// '123'.isNumeric() will return true.
  /// '123.45'.isNumeric() will return true.
  ///
  /// 'abc123'.isNumeric() will return false.
  ///
  /// ### Note:
  ///
  /// If [ignoreSpecialCharacters] is set to false, the method will return false if the string contains special characters
  /// such as periods, commas, spaces, or hyphens.
  ///
  bool isNumeric({bool? ignoreSpecialCharacters}) {
    if (isNullOrEmpty()) {
      return false;
    }

    if (ignoreSpecialCharacters == true) {
      return this!.contains(RegExp(r'^-?[0-9]+([.,\s-]?[0-9]+)*$'));
    }
    return double.tryParse(this!) != null;
  }

  /// Returns whether this string is formatted as a valid email address.
  ///
  /// ### Example:
  ///
  /// 'example@example.com'.isEmail() will return true.
  /// 'example@.com'.isEmail() will return false.
  ///
  bool isEmail() {
    if (isNullOrEmpty()) {
      return false;
    }

    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this!);
  }

  /// Returns whether this string is formatted as a valid URL.
  ///
  /// ### Example:
  ///
  /// 'https://example.com'.isUrl() will return true.
  ///
  /// 'example.com'.isUrl() will return false.
  ///
  bool isUrl() {
    if (isNullOrEmpty()) {
      return false;
    }

    return RegExp(r'^(https?:\/\/)?'
            r'([\da-z\.-]+)\.'
            r'([a-z]{2,6})'
            r'([\/\w \.-]*)*\/?$')
        .hasMatch(this!);
  }

  /// Returns whether this string is formatted as a valid phone number.
  ///
  /// ### Example:
  ///
  /// '1234567890'.isPhoneNumber() will return true.
  ///
  /// '123-456-7890'.isPhoneNumber() will return true.
  ///
  bool isPhoneNumber() {
    if (isNullOrEmpty()) {
      return false;
    }

    return RegExp(r'^\d{10}$').hasMatch(this!) || RegExp(r'^\d{3}-\d{3}-\d{4}$').hasMatch(this!);
  }

  ///Removes all whitespace from the string.
  ///
  /// ### Example:
  ///
  /// 'Hello, World!'.removeWhitespace() will return 'Hello,World!'.
  ///
  String removeWhitespace() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot remove whitespace from a null or empty string');
    }

    return this!.replaceAll(RegExp(r'\s+'), '');
  }

  /// Reverses the string.
  ///
  /// ### Example:
  ///
  /// 'Hello, World!'.reverse() will return '!dlroW ,olleH'.
  ///
  String reverse() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot reverse a null or empty string');
    }

    return this!.split('').reversed.join();
  }

  /// Converts the string to camel case.
  ///
  /// ### Example:
  ///
  /// 'Hello, World!'.toCamelCase() will return 'helloWorld!'.
  ///
  String toCamelCase() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot convert a null or empty string to camel case');
    }

    return this!.split(' ').map((word) => word.capitalizeFirst()).join().replaceFirst(this![0], this![0].toLowerCase());
  }

  /// Converts the string to snake case.
  ///
  /// ### Example:
  ///
  /// 'Hello, World!'.toSnakeCase() will return 'hello_world!'.
  ///
  String toSnakeCase() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot convert a null or empty string to snake case');
    }

    return this!.split(' ').map((word) => word.toLowerCase()).join('_');
  }

  /// Converts a readable date back to a DateTime.
  ///
  /// ### Example:
  ///
  /// 'August 9th, 2021'.toDateTime() will return DateTime(2021, 8, 9).
  ///
  DateTime toDate() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot convert a null or empty string to a DateTime');
    }

    final formats = [
      'MMMM d, y',
      'MMM d, y',
      'MMMM d',
      'MMM d',
    ];

    for (var format in formats) {
      try {
        return DateFormat(format).parse(this!);
      } catch (e) {
        continue;
      }
    }
    throw Exception('Invalid date format');
  }

  /// Converts a readable date and time back to a DateTime'.
  ///
  /// ### Example:
  ///
  /// 'August 9th, 2021 12:30 PM'.toDateTime() will return DateTime(2021, 8, 9, 12, 30).
  ///
  DateTime toDateWithTime() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot convert a null or empty string to a DateTime');
    }

    final formats = [
      'MMMM d, y h:mm',
      'MMM d, y h:mm',
      'MMMM d h:mm',
      'MMM d h:mm',
    ];

    for (var format in formats) {
      try {
        return DateFormat(format).parse(this!);
      } catch (e) {
        continue;
      }
    }
    throw Exception('Invalid date format');
  }

  /// Converts a readable time back to a DateTime.
  ///
  /// ### Example:
  ///
  /// '12:30 PM'.toDateTime() will return DateTime(2021, 8, 9, 12, 30).
  ///
  DateTime toTime() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot convert a null or empty string to a DateTime');
    }

    return DateFormat('h:mm').parse(this!);
  }
}
