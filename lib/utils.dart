import 'package:intl/intl.dart';

class Utils {
  static String currencyFromString({required String value}) {
    if (value.isEmpty) return value;
    var currency = NumberFormat.decimalPattern();
    String cleanNumber = value.replaceAll(RegExp(r'[^0-9]'), '');
    return currency.format(int.parse(cleanNumber)).replaceAll(',', '.');
  }
}
