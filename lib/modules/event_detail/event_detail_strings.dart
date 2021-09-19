import 'package:vini_verso/shared/utils/date_utils.dart';
import 'package:vini_verso/shared/utils/string_utils.dart';

class EventDetailStrings {
  static String get eventTitle => 'Evento';

  static String eventDate({required DateTime startDate, required DateTime endDate}) {
    final startWeekDay = getWeekDayInitials(startDate.weekday);
    final startMonth = getMonthInitials(startDate.month)?.toUpperCase();
    final endWeekDay = getWeekDayInitials(endDate.weekday);
    final endMonth = getMonthInitials(endDate.month)?.toUpperCase();
    return '$startWeekDay, ${startDate.day} DE $startMonth - $endWeekDay, ${endDate.day} DE $endMonth';
  }

  static String eventPrice({required double minPrice, required double maxPrice}) {
    final minPriceString = StringUtils.toCurrency(minPrice);
    final maxPriceString = StringUtils.toCurrency(maxPrice);
    final eventPriceString = '$minPriceString - $maxPriceString';
    return eventPriceString;
  }
}
