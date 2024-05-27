library input_formatter;

import 'package:flutter/services.dart';
import 'package:input_formatter/utils.dart';

class CustomTextInputFormatter extends TextInputFormatter {
  CustomTextInputFormatter({this.separator});

  final String? separator;

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var text = Utils.currencyFromString(value: newValue.text);
    return TextEditingValue(
      text: text,
      selection: newValue.selection.copyWith(
        baseOffset: text.length,
        extentOffset: text.length,
      ),
    );
  }
}
