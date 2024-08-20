part of 'package:basic_utils/basic_utils.dart';

/// Extension on String to add useful methods.
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
    if(this.isNullOrEmpty()) {
      throw Exception('Cannot compare a null or empty string');
    }

    if(trim) {
      return this!.trim().toLowerCase() == other.trim().toLowerCase();
    }

    return this!.toLowerCase() == other.toLowerCase();
  }

  String capitalizeFirstLetter() {
    if(this.isNullOrEmpty()) {
      throw Exception('Cannot capitalize the first letter of a null or empty string');
    }

    return this!.substring(0, 1).toUpperCase() + this!.substring(1);
  }

  String capitalizeFirstLetterOfEachWord() {
    if(this.isNullOrEmpty()) {
      throw Exception('Cannot capitalize the first letter of each word of a null or empty string');
    }

    return this!.split(' ').map((word) => word.capitalizeFirstLetter()).join(' ');
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
    if (this.isNullOrEmpty() || pattern.isEmpty) {
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
    if(this.isNullOrEmpty() || pattern.isEmpty) {
      return false;
    }

    return this!.toLowerCase().includes(pattern.toLowerCase());
  }
}