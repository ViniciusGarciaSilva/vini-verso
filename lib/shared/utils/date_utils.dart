import 'package:intl/intl.dart';

DateTime dateFormatter(String date) =>
    DateFormat('dd/MM/yyyy HH:mm').parse(date);
