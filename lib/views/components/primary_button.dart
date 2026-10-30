import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String _buttonText;
  const PrimaryButton({
    super.key,
    required this._buttonText,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          print('Button Pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffF83758),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(_buttonText,
          style: GoogleFonts.montserrat(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),

      ),
    );
  }
}
