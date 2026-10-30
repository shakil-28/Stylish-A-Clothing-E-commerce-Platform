import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialMediaLogin extends StatelessWidget {
  final bool _loginScreen;
  const SocialMediaLogin({
    super.key,
    required this._loginScreen
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
          children: <Widget>[
            Text('- OR Continue with -',
              style: GoogleFonts.montserrat(
                color: Color(0xff575757),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 54,
                  height: 54,
                  child: IconButton(
                    onPressed: () {

                    },
                    padding: EdgeInsets.all(15),

                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xffFCF3F6),
                      side: BorderSide(
                        color: Color(0xffF83758),
                        width: 1,
                      ),
                    ),
                    icon: SvgPicture.asset('assets/logo/google_logo.svg'),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 54,
                  height: 54,
                  child: IconButton(
                    onPressed: () {

                    },
                    padding: EdgeInsets.all(15),

                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xffFCF3F6),
                      side: BorderSide(
                        color: Color(0xffF83758),
                        width: 1,
                      ),
                    ),
                    icon: SvgPicture.asset('assets/logo/apple_logo.svg'),
                  ),
                ),

                SizedBox(width: 10),

                SizedBox(
                  width: 54,
                  height: 54,
                  child: IconButton(
                    onPressed: () {

                    },
                    padding: EdgeInsets.all(15),

                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xffFCF3F6),
                      side: BorderSide(
                        color: Color(0xffF83758),
                        width: 1,
                      ),
                    ),
                    icon: SvgPicture.asset('assets/logo/facebook_logo.svg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 28),
            _loginScreen ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Create An Account',
                  style: GoogleFonts.montserrat(
                    color: Color(0xff575757),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () => {
                    debugPrint('Sign Up'),
                  },
                  child: Text('Sign Up',
                    style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffF83758),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffF83758),
                          decorationThickness: 2,
                        )
                    ),
                ),
              ],
            ) : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('I Already Have an Account',
                  style: GoogleFonts.montserrat(
                    color: Color(0xff575757),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () => {
                    debugPrint('Sign Up'),
                  },
                  child: Text('Login',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffF83758),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffF83758),
                        decorationThickness: 2,
                      )
                  ),
                ),
              ],
            ),

          ]
      ),
    );
  }
}
