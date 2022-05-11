import 'package:vini_verso/shared/utils/date_utils.dart';
import 'package:vini_verso/shared/utils/string_utils.dart';

class EventStrings {
  static _Detail get detail => _Detail();
}

class _Detail {
  const _Detail();

  final String title = 'Evento';
  final String local = 'Local';
  final String region = 'Região';
  final String lineUp = 'Line Up';
  final String capacity = 'Lotação';
  final String interested = 'Interessados';
  final String confirmed = 'Confirmados';
  final String price = 'Preço';
  final String tickets = 'Ingressos';
  final String crew = 'Crew';
  final String description = 'Descrição';

  String eventDate({required DateTime startDate, required DateTime endDate}) {
    final startWeekDay = getWeekDayInitials(startDate.weekday);
    final startMonth = getMonthInitials(startDate.month)?.toUpperCase();
    final endWeekDay = getWeekDayInitials(endDate.weekday);
    final endMonth = getMonthInitials(endDate.month)?.toUpperCase();
    return '$startWeekDay, ${startDate.day} DE $startMonth - $endWeekDay, ${endDate.day} DE $endMonth';
  }

  String eventPrice({required double minPrice, required double maxPrice}) {
    final minPriceString = StringUtils.toCurrency(minPrice);
    final maxPriceString = StringUtils.toCurrency(maxPrice);
    final eventPriceString = '$minPriceString - $maxPriceString';
    return eventPriceString;
  }
}
