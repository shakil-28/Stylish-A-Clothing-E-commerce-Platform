import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/views/components/social_media_login.dart';
import 'package:stylish/views/components/text_input_field.dart';

import 'components/primary_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              Text('Create an\nAccount',
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 33),
              TextInputField(
                prefixIcon: Icon(Icons.person),
                hintText: 'Username or Email',
                obscureText: false,
              ),
              SizedBox(height: 31),
              TextInputField(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 31),
              TextInputField(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Confirm Password',
                obscureText: true,
              ),
              SizedBox(height: 19),
              Text.rich(
                TextSpan(
                  style: GoogleFonts.montserrat(
                    color: Color(0xff676767),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: 'By Clicking the ',
                    ),
                    TextSpan(
                      text: 'Register',
                      style: GoogleFonts.montserrat(
                        color: Color(0xffFF4B26),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' button, you agree\nto the public offer',
                    ),
                  ]
                ),
              ),
              SizedBox(height: 38),
              PrimaryButton(buttonText: 'Create Account',),
              SizedBox(height: 40),
              SocialMediaLogin(loginScreen: false,)
            ],
          ),
        ),
      ),
    );
  }
}
