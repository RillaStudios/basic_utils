part of 'package:basicutils/basic_utils.dart';

/// Extension on [DateTime] to add useful methods.
///
extension DateExt on DateTime {
  /// Returns if the date is today.
  ///
  /// ### Example:
  ///
  /// DateTime.now().isToday() will return true.
  ///
  bool isToday() {
    final now = DateTime.now();
    return now.year == year && now.month == month && now.day == day;
  }

  /// Returns if the date is yesterday.
  ///
  /// ### Example:
  ///
  /// DateTime.now().subtract(const Duration(days: 1)).isYesterday() will return true.
  ///
  bool isYesterday() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.year == year &&
        yesterday.month == month &&
        yesterday.day == day;
  }

  /// Returns if the date is tomorrow.
  ///
  /// ### Example:
  ///
  /// DateTime.now().add(const Duration(days: 1)).isTomorrow() will return true.
  ///
  bool isTomorrow() {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return tomorrow.year == year &&
        tomorrow.month == month &&
        tomorrow.day == day;
  }

  /// Returns if the date is in the past.
  ///
  /// ### Example:
  ///
  /// DateTime.now().subtract(const Duration(days: 1)).isPast() will return true.
  ///
  bool isPast() {
    return isBefore(DateTime.now());
  }

  /// Returns if the date is in the future.
  ///
  /// ### Example:
  ///
  /// DateTime.now().add(const Duration(days: 1)).isFuture() will return true.
  ///
  bool isFuture() {
    return isAfter(DateTime.now());
  }

  /// Returns if the date is in the same year as the given date.
  ///
  /// ### Example:
  ///
  /// DateTime.now().isSameYear(DateTime.now()) will return true.
  ///
  bool isSameYear(DateTime date) {
    return year == date.year;
  }

  /// Returns if the date is in the same month as the given date.
  ///
  /// ### Example:
  ///
  /// DateTime.now().isSameMonth(DateTime.now()) will return true.
  ///
  bool isSameMonth(DateTime date) {
    return year == date.year && month == date.month;
  }

  /// Returns if the date is in the same day as the given date.
  ///
  /// ### Example:
  ///
  /// DateTime.now().isSameDay(DateTime.now()) will return true.
  ///
  bool isSameDay(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }

  /// Returns if the date is the weekend.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 7).isWeekend() will return true.
  ///
  bool isWeekend() {
    return weekday == DateTime.saturday || weekday == DateTime.sunday;
  }

  /// Returns if the date is a weekday.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).isWeekday() will return true.
  ///
  bool isWeekday() {
    return !isWeekend();
  }

  /// Returns the start of the day.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9, 12, 30).startOfDay() will return DateTime(2021, 8, 9, 0, 0).
  ///
  DateTime startOfDay() {
    return DateTime(year, month, day);
  }

  /// Returns the end of the day.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9, 12, 30).endOfDay() will return DateTime(2021, 8, 9, 23, 59).
  ///
  DateTime endOfDay() {
    return DateTime(year, month, day, 23, 59);
  }

  /// Returns a readable string of the date.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).toReadableString() will return 'August 9th, 2021'.
  ///
  String toReadableDate({bool? includeYear, bool? shortMonth}) {
    DateFormat dateFormat;

    if (includeYear == false) {
      dateFormat = shortMonth == true ? DateFormat.MMMd() : DateFormat.MMMMd();
    } else {
      dateFormat =
          shortMonth == true ? DateFormat.yMMMd() : DateFormat.yMMMMd();
    }

    return dateFormat.format(this);
  }

  /// Returns a readable string of the date and time.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9, 12, 30).toReadableString() will return 'August 9th, 2021 12:30 PM'.
  ///
  String toReadableDateWithTime({bool? includeYear, bool? shortMonth}) {
    DateFormat dateFormat;

    if (includeYear == false) {
      dateFormat = shortMonth == true
          ? DateFormat.MMMd().add_jm()
          : DateFormat.MMMMd().add_jm();
    } else {
      dateFormat = shortMonth == true
          ? DateFormat.yMMMd().add_jm()
          : DateFormat.yMMMMd().add_jm();
    }

    return dateFormat.format(this);
  }

  /// Returns a readable string of the time.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9, 12, 30).toReadableTimeString() will return '12:30 PM'.
  ///
  String toReadableTime() {
    return DateFormat.jm().format(this);
  }

  /// Returns the next day.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).nextDay() will return DateTime(2021, 8, 10).
  ///
  DateTime nextDay() {
    return add(const Duration(days: 1));
  }

  /// Returns the previous day.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).previousDay() will return DateTime(2021, 8, 8).
  ///
  DateTime previousDay() {
    return subtract(const Duration(days: 1));
  }

  /// Returns an int representing the next month.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).nextMonth() will return DateTime(2021, 9, 9).
  ///
  int nextMonth() {
    return month < 12 ? month + 1 : 1;
  }

  /// Returns an int representing the previous month.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).previousMonth() will return DateTime(2021, 7, 9).
  ///
  int previousMonth() {
    return month > 1 ? month - 1 : 12;
  }

  /// Returns a String representing the month.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).monthString() will return 'August'.
  ///
  String monthString() {
    return DateFormat.MMMM().format(this);
  }

  /// Returns a String representing the day of the week.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).dayOfWeekString() will return 'Monday'.
  ///
  String dayOfWeekString() {
    return DateFormat.EEEE().format(this);
  }

  /// Returns a String representing the next month.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).nextMonthString() will return 'September'.
  ///
  String nextMonthString() {
    return DateFormat.MMMM().format(DateTime(year, nextMonth()));
  }

  /// Returns a String representing the previous month.
  ///
  /// ### Example:
  ///
  /// DateTime(2021, 8, 9).previousMonthString() will return 'July'.
  ///
  String previousMonthString() {
    return DateFormat.MMMM().format(DateTime(year, previousMonth()));
  }
}
