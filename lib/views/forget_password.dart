import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/views/components/primary_button.dart';
import 'package:stylish/views/components/text_input_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 100, 28, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forgot\nPassword?',
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 32),
              TextInputField(
                prefixIcon: Icon(Icons.email),
                hintText: 'Enter your email address',
                obscureText: false,
              ),
              SizedBox(height: 26),
              Text.rich(
                TextSpan(
                  style: GoogleFonts.montserrat(
                    color: Color(0xff676767),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: '*',
                      style: GoogleFonts.montserrat(
                        color: Color(0xffFF4B26),
                      ),
                    ),
                    TextSpan(
                      text: ' We will send you a message to set or reset\nyour new password',
                    ),
                  ]
                )
              ),
              SizedBox(height: 38),
              PrimaryButton(buttonText: 'Submit'),
            ],
          ),
        )
      ),
    );
  }
}
