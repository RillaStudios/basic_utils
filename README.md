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

See Features for a list of methods added based off the data type.

## Features

<h3>Strings</h3>

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

<h3>Numbers (int & doubles)</h3>

- roundToNearestMultiple(int multipleOf)

- floorToNearestMultiple(int multipleOf)

- percentOf(num total)

- percentOfAsString(num total)

<h3>Doubles</h3>

- isEven()

- isOdd()

- toCurrencyString({String symbol = '\$', int decimalPlaces = 2})

- toCurrency()

<h3>Map</h3>

- isNullOrEmpty()

- invert()

- mapValues<K, V>(V Function(V) transform)

- mapKeys<K, V>(V Function(V) transform)

- merge<K, V>(Map<K, V> other, {bool? keepFirst})

- addEntry({required key, required value})

- removeEntry(key)

- get(K key, {V? defaultValue})

<h3>List</h3>

- isNullOrEmpty()

- chunk<T>(int size)

- distinct<T>()

- flatten<T>()

- median<T extends num>()

- average()

- sum<T extends num>()

- range<T extends num>()

<h3>DateTime</h3>

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

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
