part of 'package:ext_utils/ext_utils.dart';

/// Extension on [Map] to add useful methods.
///
extension MapExt on Map? {
  ///Returns whether the map is null or empty.
  ///
  /// ### Example:
  ///
  /// {}.isNullOrEmpty() will return true.
  ///
  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }

  /// Inverts the map.
  ///
  /// ### Example:
  ///
  /// {'a': 1, 'b': 2}.invert() will return {1: 'a', 2: 'b'}.
  Map<K, V> invert<K, V>() {
    if (isNullOrEmpty()) {
      throw Exception('Cannot invert a null or empty map');
    }

    return Map.fromEntries(this!.entries.map((e) => MapEntry(e.value, e.key)));
  }

  /// Apply a transformation to the values of the map.
  ///
  /// ### Example:
  ///
  /// {'a': 1, 'b': 2}.mapValues((v) => v * 2) will return {'a': 2, 'b': 4}.
  ///
  Map<K, V> mapValues<K, V>(V Function(V) transform) {
    if (isNullOrEmpty()) {
      throw Exception('Cannot map values of a null or empty map');
    }

    return Map.fromEntries(this!.entries.map((e) => MapEntry(e.key, transform(e.value))));
  }

  /// Apply a transformation to the keys of the map.
  ///
  /// ### Example:
  ///
  /// {'a': 1, 'b': 2}.mapKeys((k) => k.toUpperCase()) will return {'A': 1, 'B': 2}.
  ///
  Map<K, V> mapKeys<K, V>(K Function(K) transform) {
    if (isNullOrEmpty()) {
      throw Exception('Cannot map keys of a null or empty map');
    }

    return Map.fromEntries(this!.entries.map((e) => MapEntry(transform(e.key), e.value)));
  }

  /// Merge two maps.
  ///
  /// If a key is present in both maps, the value from the second map will be used, unless
  /// the keepFirst parameter is set to false.
  ///
  /// ### Parameters:
  ///
  /// - [other]: The map to merge with.
  /// - [keepFirst]: Whether to keep the value from the first map when a key is present in both maps.
  ///
  /// ### Example:
  ///
  /// {'a': 1, 'b': 2}.merge({'b': 3, 'c': 4}) will return {'a': 1, 'b': 3, 'c': 4}.
  ///
  Map<K, V> merge<K, V>(Map<K, V> other, {bool? keepFirst}) {
    if (isNullOrEmpty()) {
      throw Exception('Cannot merge a null or empty map');
    }

    final Map<K, V> result = Map.from(this!);

    if (keepFirst == true) {
      other.forEach((key, value) {
        result.putIfAbsent(key, () => value);
      });
    } else {
      result.addAll(other);
    }

    return result;
  }

  /// Adds a key-value pair to the map if the key is not already present.
  ///
  /// ### Parameters:
  ///
  /// - [key]: The key to add.
  /// - [value]: The value to add.
  ///
  /// ### Example:
  ///
  /// {'a': 1}.addEntry(key: 'b', value: 2) will return {'a': 1, 'b': 2}.
  ///
  void addEntry({required key, required value}) {
    if (isNullOrEmpty()) {
      throw Exception('Cannot add an entry to a null or empty map');
    }

    if (!this!.containsKey(key)) {
      this![key] = value;

      return;
    }

    throw Exception('Key $key already present in map');
  }

  /// Removes a key-value pair from the map.
  ///
  /// ### Parameters:
  ///
  /// - [key]: The key to remove.
  ///
  /// ### Example:
  ///
  /// {'a': 1, 'b': 2}.removeEntry('a') will return {'b': 2}.
  ///
  void removeEntry(key) {
    if (isNullOrEmpty()) {
      throw Exception('Cannot remove an entry from a null or empty map');
    }

    if (this!.containsKey(key)) {
      this!.remove(key);

      return;
    }

    throw Exception('Key $key not present in map');
  }

  /// Gets a value from the map, or returns a default value if the key is not present.
  ///
  /// ### Parameters:
  ///
  /// - [key]: The key to get the value for.
  /// - [defaultValue]: The default value to return if the key is not present.
  ///
  /// ### Example:
  ///
  /// {'a': 1}.get('a', 2) will return 1.
  ///
  V? get<K, V>(K key, {V? defaultValue}) {
    if (isNullOrEmpty()) {
      throw Exception('Cannot get a value from a null or empty map');
    }

    return this!.containsKey(key) ? this![key] : defaultValue;
  }
}
