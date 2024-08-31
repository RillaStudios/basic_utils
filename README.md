<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

BasicUtils is a simple Flutter package desiged to implement helpful utilities to make the development process quicker and easier.
It adds extra methods to data types which can be useful when writing your programs/apps.

## ✅ Features

<h3>🔤 Strings</h3>

- isNullOrEmpty()

- equalsIgnoreCase()

- capitalizeFirst()

- capitalizeFirstEach()

- includes()

- includesIgnoreCase()

- isNumeric()

- isEmail()

- isUrl()

- isPhoneNumber()

- removeWhitespace()

- reverse()

- toCamelCase()

- toSnakeCase()

- toSnakeCase()

- toDate()

- toDateWithTime()

- toTime()

<h3>🔢 Numbers (int & doubles)</h3>

- roundToNearestMultiple(int multipleOf)

- floorToNearestMultiple(int multipleOf)

- percentOf(num total)

- percentOfAsString(num total)

<h3>#️⃣ Doubles</h3>

- isEven()

- isOdd()

- toCurrencyString({String symbol = '\$', int decimalPlaces = 2})

- toCurrency()

<h3>🗺️ Map</h3>

- isNullOrEmpty()

- invert()

- mapValues<K, V>(V Function(V) transform)

- mapKeys<K, V>(V Function(V) transform)

- merge<K, V>(Map<K, V> other, {bool? keepFirst})

- addEntry({required key, required value})

- removeEntry(key)

- get(K key, {V? defaultValue})

<h3>🗒️ List</h3>

- isNullOrEmpty()

- chunk<T>(int size)

- distinct<T>()

- flatten<T>()

- median<T extends num>()

- average()

- sum<T extends num>()

- range<T extends num>()

<h3>🗓️ DateTime</h3>

- isToday()

- isYesterday()

- isTomorrow()

- isPast()

- isFuture()

- isSameYear(DateTime date)

- isSameMonth(DateTime date)

- isSameDay(DateTime date)

- isWeekend()

- isWeekday()

- startOfDay()

- endOfDay()

- toReadableDate({bool? includeYear, bool? shortMonth})

- toReadableDateWithTime({bool? includeYear, bool? shortMonth})

- toReadableTime()

- nextDay()

- previousDay()

- nextMonth()

- previousMonth()

- monthString()

- dayOfWeekString()

- nextMonthString()

- previousMonthString()

## 📋 Getting started

To use this package, add Basic_Utils as a dependency in your pubspec.yaml file.

```dart
dependencies:
  basic_utils: ^1.0.0
```

Import the package

```dart
import 'package:basic_utils/basic_utils.dart';
```

## ℹ️ Additional information

<h3>🪄 Feature request?</h3>

Have an idea to make this package even better? Tell us on the <a href="https://github.com/RillaStudios/basic_utils/discussions">BasicUtils discussion page (GitHub)</a>

<h3>🪲 Found a bug?</h3>

Please report all bugs or issues on the <a href="https://github.com/RillaStudios/basic_utils/issues">BasicUtils issues page (GitHub)</a>

We encourage you to report anything package related to the GitHub repository pages as any and all input will help make this package even better in future versions!

## 🚀 Support

Enjoying this package? Consider supporting my work. Your contributions will allow me to keep creating and sharing valuable content and innovative projects.

<a href="https://www.buymeacoffee.com/izaakford" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" height="60px" width="217px"></a>
