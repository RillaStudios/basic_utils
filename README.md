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

BasicUtils is a Flutter package desiged to implement helpful utilities to make the development process quicker and easier.

## Features/Utilities

<h3>Strings</h3>

- isNullOrEmpty()

  - Description: Returns whether this string is null or empty.
  - Returns: bool

```dart
String? str = 'Hi';

str.isNullOrEmpty(); //Will return false
```

- equalsIgnoreCase()

  - Description: Determines weather a string is equal to another string ignoring the case.
  - Returns: bool

```dart
String? str = 'HELLO';

String otherStr = 'hello';

str.equalsIgnoreCase(otherStr); //Will return true
```

- capitalizeFirst()

  - Description: Capitalizes the first letter of the string.
  - Returns: String

```dart
String? str = 'hello world';

str.capitalizeFirst(); //Will return 'Hello world'
```

- capitalizeFirstEach()

  - Description: Capitalizes the first letter of each word in the string.
  - Returns: String

```dart
String? str = 'hello world';

str.capitalizeFirstEach(); //Will return 'Hello World'
```

- includes()

  - Description: Returns whether this string contains the given [pattern].
  - Note: More efficient than naive contains method.
  - Returns: bool

```dart
String? str = 'hello world';

String word = 'world';

str.includes(word); //Will return true
```

- includesIgnoreCase()

  - Description: Returns whether this string contains the given [pattern] ignoring the case.
  - Returns: bool

```dart
String? str = 'hello world';

String word = 'WORLD';

str.includesIgnoreCase(word); //Will return true
```

- isNumeric()

  - Description: Returns weather this string contains only numbers.
  - Returns: bool

```dart
String? str = '12345';

str.isNumeric(); //Will return true
```

- isEmail()

  - Description: Returns whether this string is formatted as a valid email address.
  - Returns: bool

```dart
String? str = 'example@example.com';

str.isEmail(); //Will return true
```

- isUrl()

  - Description: Returns whether this string is formatted as a valid URL.
  - Returns: bool

```dart
String? str = 'https://www.pub.dev/';

str.isUrl(); //Will return true
```

- isPhoneNumber()

  - Description: Returns whether this string is formatted as a valid phone number.
  - Returns: bool

```dart
String? str = '1234567890';

str.isPhoneNumber(); //Will return true
```

- removeWhitespace()

  - Description: Removes all whitespace from the string.
  - Returns: String

```dart
String? str = 'Hello World';

str.removeWhitespace(); //Will return 'HelloWorld'
```

- reverse()

  - Description: Reverses the string.
  - Returns: String

```dart
String? str = 'Hello World';

str.reverse(); //Will return 'dlroW olleH'
```

- toCamelCase()

  - Description: Converts the string to camel case.
  - Returns: String

```dart
String? str = 'Hello World';

str.toCamelCase(); //Will return 'helloWorld'
```

- toSnakeCase()

  - Description: Converts the string to snake case.
  - Returns: String

```dart
String? str = 'Hello World';

str.toSnakeCase(); //Will return 'hello_world'
```

- toSnakeCase()

  - Description: Converts the string to snake case.
  - Returns: String

```dart
String? str = 'Hello World';

str.toSnakeCase(); //Will return 'hello_world'
```

- toDate()

  - Description: Converts a readable date back to a DateTime.
  - Returns: String

```dart
String? str = 'August 9th, 2021';

str.toDate(); //Will return DateTime(2021, 8, 9).
```

- toDateWithTime()

  - Description: Converts a readable date back to a DateTime.
  - Returns: String

```dart
String? str = 'August 9th, 2021 12:30 PM';

str.toDateWithTime(); //Will return DateTime(2021, 8, 9, 12, 30).
```

- toTime()

  - Description: Converts a readable time back to a DateTime.
  - Returns: String

```dart
String? str = '12:30 PM';

str.toDateWithTime(); //Will return DateTime(1970, 8, 9, 12, 30).
```

<h3>Numbers (int & doubles)</h3>

<h3>Doubles</h3>

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
