import 'package:intl/intl.dart';

class StringUtils {
  static String toCurrency(double value) =>
      NumberFormat.simpleCurrency(locale: 'pt-BR').format(value);
}
