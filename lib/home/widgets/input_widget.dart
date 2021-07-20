import 'package:flutter/material.dart';
import 'package:safuel_app/shared/helpers/format.dart';
import 'package:safuel_app/shared/styles/app_colors.dart';

class InputWidget extends StatelessWidget {
  final String label;

  const InputWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: TextFormField(
        inputFormatters: [currencyFormatter],
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          hintText: "R\$ 0,00",
          hintStyle: TextStyle(color: AppColors.greyColor),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.greyColor,
              width: 1.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              width: 1.0,
            ),
          ),
        ),
        validator: (value) => currencyValidator(value),
      ),
    );
  }
}
