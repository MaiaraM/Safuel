import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

var currencyFormatter = new MaskTextInputFormatter(
    mask: 'R\$ ##,##', filter: {"#": RegExp(r'[0-9]')});

var doubleFormatter =
    new MaskTextInputFormatter(mask: '##.###', filter: {"#": RegExp(r'[0-9]')});

String? currencyValidator(String? value) {
  if (value!.isEmpty) return "Campo inválido";
  if (formatStringToDouble(value) <= 0) return "Campo inválido";
  return null;
}

double formatStringToDouble(String value) {
  var number = doubleFormatter.maskText(value);
  return double.parse(number);
}
