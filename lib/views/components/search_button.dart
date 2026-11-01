import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: TextField(
        textAlign: TextAlign.start,
        onTap: () => {

        },
        style: GoogleFonts.montserrat(
          color: Color(0x000ffbbb),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: 'Search any Products..',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xffA8A8A9),
            ),
          ),
        ),
      ),
    );
  }
}
