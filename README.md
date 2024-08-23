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

## Features

<h3>Strings</h3>

- isNullOrEmpty()

  - Description: Returns whether this string is null or empty.
  - Returns: bool

- equalsIgnoreCase()

  - Description: Determines weather a string is equal to another string ignoring the case.
  - Returns: bool

- capitalizeFirst()

  - Description: Capitalizes the first letter of the string.
  - Returns: String

- capitalizeFirstEach()

  - Description: Capitalizes the first letter of each word in the string.
  - Returns: String

- includes()

  - Description: Returns whether this string contains the given [pattern].
  - Note: More efficient than naive contains method.
  - Returns: bool

- includesIgnoreCase()

  - Description: Returns whether this string contains the given [pattern] ignoring the case.
  - Returns: bool

- isNumeric()

  - Description: Returns weather this string contains only numbers.
  - Returns: bool

- isEmail()

  - Description: Returns whether this string is formatted as a valid email address.
  - Returns: bool

- isUrl()

  - Description: Returns whether this string is formatted as a valid URL.
  - Returns: bool

- isPhoneNumber()

  - Description: Returns whether this string is formatted as a valid phone number.
  - Returns: bool

- removeWhitespace()

  - Description: Removes all whitespace from the string.
  - Returns: String

- reverse()

  - Description: Reverses the string.
  - Returns: String

- toCamelCase()

  - Description: Converts the string to camel case.
  - Returns: String

- toSnakeCase()

  - Description: Converts the string to snake case.
  - Returns: String

- toSnakeCase()

  - Description: Converts the string to snake case.
  - Returns: String

- toDate()

  - Description: Converts a readable date back to a DateTime.
  - Returns: String

- toDateWithTime()

  - Description: Converts a readable date back to a DateTime.
  - Returns: String

- toTime()

  - Description: Converts a readable time back to a DateTime.
  - Returns: String

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
