import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SvgPicture.asset('assets/logo.svg'),
            SizedBox(width: 9),
            Text('Stylish',
              style: GoogleFonts.libreCaslonText(
                fontSize: 40,
                color: Color(0xFFF83758),
                fontWeight: FontWeight.w700,
              ),
            ),
          ]
        )
      ),
    );
  }
}
