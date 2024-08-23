import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRestoPromo extends StatelessWidget {
  const DetailRestoPromo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(8.dg),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffDB191D),
            ),
            child: Image.asset('assets/image/tags.png'),
          ),
          12.horizontalSpace,
          Text(
            'Your have availabe promo',
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: const Color(0xff1F1F1F),
            ),
          ),
          114.horizontalSpace,
          const Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
