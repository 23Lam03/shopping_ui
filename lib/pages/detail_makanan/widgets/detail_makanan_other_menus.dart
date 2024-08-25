import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailMakananOtherMenus extends StatelessWidget {
  const DetailMakananOtherMenus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Other Menus',
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: const Color(0xff000000),
      ),
    );
  }
}
