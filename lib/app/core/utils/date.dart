// ignore_for_file: non_constant_identifier_names

import 'package:intl/intl.dart';
import 'package:laufen_front/app/core/assets/constants.dart';
import 'package:logger/logger.dart';

const _ERROR_FORMAT_DATE = 'DateUtils.formatDate: operation failed';

final MINIMUM_AVAILABLE_DATE = DateTime(2000);
final MAXIMUM_AVAILABLE_DATE = DateTime(2100);

String dateFormat(int millisecondsSinceEpoch) => DateFormat(
  'dd / MM / y',
  'en-US',
).format(DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch));

String dateTimeFormat(int millisecondsSinceEpoch) => DateFormat(
  'MMM dd, y, HH:mm',
  'en-US',
).format(DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch));

String timeFormat(int millisecondsSinceEpoch) => DateFormat(
  'HH:mm',
  'en-US',
).format(DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch));

String formatDate(DateTime date, {String format = MEETING_DATE_FORMAT}) {
  try {
    final outputFormat = DateFormat(format);
    return outputFormat.format(date);
  } on Exception catch (e, stackTrace) {
    Logger().e(_ERROR_FORMAT_DATE, error: e, stackTrace: stackTrace);

    return date.toString();
  }
}

DateTime? parseDate(String date, {String from = SIMPLE_FORMAT}) {
  if (date.isEmpty) {
    return null;
  }
  final inputFormat = DateFormat(from);
  return inputFormat.parse(date);
}

DateTime? parseDateFrom(String date, {String from = MEETING_DATE_FORMAT}) {
  if (date.isEmpty) {
    return null;
  }
  final inputFormat = DateFormat(from);
  return inputFormat.parse(date);
}

extension DateFormatting on DateTime {
  String get toSimpleDate => formatDate(this, format: SIMPLE_FORMAT);

  String get toSimpleSmallDate => formatDate(this, format: SIMPLE_SMALL_FORMAT);

  String get toMeetingDate => formatDate(this);
}

String reformatPhone(String phone) => phone.replaceAllMapped(
  RegExp(r'(\d{1})(\d{3})(\d{3})(\d{2})(\d{2})'),
  (Match m) => "+${m[1]} (${m[2]}) ${m[3]} ${m[4]}-${m[5]}",
);

int daysBetween(DateTime from, DateTime to) {
  final DateTime fromRef = DateTime(from.year, from.month, from.day);
  final DateTime toRef = DateTime(to.year, to.month, to.day);
  return (toRef.difference(fromRef).inHours / 24).round();
}

final DateFormat userDateFormat = DateFormat(USER_DATE_FORMAT);
final DateFormat graphqlDateTimeFormat = DateFormat(
  '${GRAPHQL_DATE_TIME_FORMAT}Z',
);
final DateFormat graphqlDateFormat = DateFormat(GRAPHQL_DATE_FORMAT);

DateTime parseGraphqlTime(String dateTimeString) =>
    graphqlDateTimeFormat.parse('${dateTimeString}Z').toLocal();

final taskDateTimeFormatter = DateFormat('dd.MM.yyyy HH:mm');

String formatWeekDayName(int dayOfWeek, String? languageCode) {
  final isRu = languageCode == null || languageCode == 'ru';

  switch (dayOfWeek) {
    case 1:
      return isRu ? MONDAY_RU : MONDAY_EN;
    case 2:
      return isRu ? TUESDAY_RU : TUESDAY_EN;
    case 3:
      return isRu ? WEDNESDAY_RU : WEDNESDAY_EN;
    case 4:
      return isRu ? THURSDAY_RU : THURSDAY_EN;
    case 5:
      return isRu ? FRIDAY_RU : FRIDAY_EN;
    case 6:
      return isRu ? SATURDAY_RU : SATURDAY_EN;
    case 7:
      return isRu ? SUNDAY_RU : SUNDAY_EN;
    default:
      return '';
  }
}
