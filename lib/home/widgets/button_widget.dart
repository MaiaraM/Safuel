import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safuel_app/shared/styles/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final bool loading;
  final String text;

  const ButtonWidget({
    Key? key,
    required this.onTap,
    required this.text,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: !loading
            ? Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(color: Colors.white),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
