import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffF9F9F9),
      titleSpacing: 18,
      title: Row(
          children: [
            SvgPicture.asset('assets/logo/logo.svg',
              width: 40,
            ),
            SizedBox(width: 9),
            Text('Stylish',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff4392F9),
              ),
            )
          ]
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: ClipOval(
            child: SizedBox(
              width: 40,
              height: 40,
              child: IconButton(

                padding: EdgeInsets.all(0),
                onPressed: () => {
                },
                icon: Image.asset('assets/images/profile_picture.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
