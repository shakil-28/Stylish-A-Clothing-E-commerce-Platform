import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username or Email',
                  filled: true,
                  fillColor: Color(0xffF3F3F3),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 11, right: 3),
                    child: Icon(Icons.person),
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 24,
                    minHeight: 24,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xffA8A8A9),
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xffA8A8A9),
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xffA8A8A9),
                      )
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
