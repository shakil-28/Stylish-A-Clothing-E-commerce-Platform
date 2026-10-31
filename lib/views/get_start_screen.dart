import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/views/components/primary_button.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset('assets/images/getstart_background.jpg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 362,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.63),
                  ],
                  stops: [
                    0.0,
                    0.2367
                  ]
                ),
              )
            ),
          ),

          Positioned(
            bottom: 170,
            left: 0,
            right: 0,
            child: Text('You want\nAuthentic, here\nyou go!',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            bottom: 133,
            left: 0,
            right: 0,
            child: Text('Find it here, buy it now!',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Color(0xffF2F2F2),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            bottom: 34,
            left: 55,
            right: 55,
            child: PrimaryButton(buttonText: 'Get Started')

          ),
        ],
      )
    );
  }
}
