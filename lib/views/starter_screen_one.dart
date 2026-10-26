import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StarterScreenOne extends StatefulWidget {
  const StarterScreenOne({super.key});

  @override
  State<StarterScreenOne> createState() => _StarterScreenOneState();
}

class _StarterScreenOneState extends State<StarterScreenOne> {
  final PageController _pageController = PageController();
  late int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) => {
            setState(() {
              _currentPage = index;
            }),
          },
          children: [
            firstCard(headLine: 'Choose Products',),
            firstCard(headLine: 'Make Payment',),
            firstCard(headLine: 'Get Your Order',),
          ]
        ),
      ),

      bottomNavigationBar: buildBottomAppBar()
    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      padding: EdgeInsets.all(17),
      color: Colors.white,
      child: Stack(
        children: [
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: _currentPage,
              count: 3,
              effect: ExpandingDotsEffect(
                dotColor: const Color(0xff17223b33),
                activeDotColor: const Color(0xff17223B),
                spacing: 10,
                dotHeight: 10,
                dotWidth: 10,
                expansionFactor: 4,
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: TextButton(
              onPressed: () => {
                _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut)
              },
              child: Text(_currentPage == 2 ? 'Get Started' : 'Next',
                style: GoogleFonts.montserrat(
                  color: Color(0xFFF83758),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )
            )
          ),
          _currentPage != 0 ? Positioned(
            child: TextButton(
              onPressed: () {
                _pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
              },

              child: Text('Prev',
                style: GoogleFonts.montserrat(
                  color: Color(0xffC4C4C4),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ) : SizedBox.shrink(),
        ]
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 80,
      leading: Container(
        margin: EdgeInsets.all(17),
        child: Row(
          children: [
            Text('${_currentPage + 1}',
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
    );
  }
}

class firstCard extends StatelessWidget {
  String headLine;

  firstCard(
    {
      super.key,
      required this.headLine,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
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
              headLine,
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
    );
  }
}
