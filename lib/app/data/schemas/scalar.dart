import 'package:laufen_front/app/core/utils/utils.dart';

DateTime dateTimeFromJsonUtcToLocal(dynamic data) => DateTime.parse('${data}Z');

String dateTimeToUtcToJson(DateTime dateTime) =>
    graphqlDateTimeFormat.format(dateTime);

DateTime dateFromJsonUtcToLocal(dynamic data) => graphqlDateFormat.parse(data);

String dateToUtcToJson(DateTime dateTime) => graphqlDateFormat.format(dateTime);
