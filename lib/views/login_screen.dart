import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/views/components/primary_button.dart';
import 'package:stylish/views/components/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  final TextInputField _emailField = TextInputField(
    prefixIcon: Icon(Icons.person),
    hintText: 'Username or Email',
    textInputAction: TextInputAction.next,
  );
  final TextInputField _passwordField = TextInputField(
    prefixIcon: Icon(Icons.lock),
    hintText: 'Password',
    textInputAction: TextInputAction.done,
  );
  final PrimaryButton _loginButton = PrimaryButton();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(28, 100, 28, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text('Back!',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]
                ),
              ),

              SizedBox(height: 36,),
              _emailField,
              SizedBox(height: 31,),
              _passwordField,
              SizedBox(height: 9,),

              // forget password text button implementation
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => {
                    print('Forgot Password')
                  },
                  style: ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                    overlayColor: WidgetStatePropertyAll(Colors.transparent),
                    padding: WidgetStatePropertyAll(EdgeInsets.zero),
                    minimumSize: WidgetStatePropertyAll(Size.zero),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text('Forgot Password?',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF83758),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 52,),
              _loginButton,
              SizedBox(height: 75,),
              Container(
                width: double.infinity,
                height: 138,
                color: Colors.amber,
              )


            ],
          )
      ),
    );
  }

}
