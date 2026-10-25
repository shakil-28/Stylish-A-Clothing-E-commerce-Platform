import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StarterScreenOne extends StatefulWidget {
  const StarterScreenOne({super.key});

  @override
  State<StarterScreenOne> createState() => _StarterScreenOneState();
}

class _StarterScreenOneState extends State<StarterScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 80,
        leading: Container(
          margin: EdgeInsets.all(17),
          child: Row(
            children: [
              Text('1',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text('/3',
                style: GoogleFonts.montserrat(
                  color: Color(0xffA0A0A1),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),

        actions: [
          TextButton(
            onPressed: () {

            },
            child: Text('Skip',
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(17),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/fashion shop-rafiki 1.svg'),
                SizedBox(height: 15,),
                Text(
                  'Choose Products',
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10,),
                Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Color(0xffA8A8A9),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ]
            )
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
      )
    );
  }
}
