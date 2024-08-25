import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailMakananDetail extends StatelessWidget {
  const DetailMakananDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100.dg,
          decoration: const BoxDecoration(
            color: Color(0xffE3E3E3),
          ),
        ),
        28.verticalSpace,
        Text(
          'Paket Hemat Sate Ayam',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: const Color(0xff121212),
          ),
        ),
        20.verticalSpace,
        Text(
          'Budget-friendly menu featuring 10 skewers of chicken satay, served with rice and your choice of sweet (hot/cold) tea.',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xff999999),
          ),
        ),
        28.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color(0xff000000),
                  ),
                ),
                17.verticalSpace,
                Text(
                  'Rp 19.000',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: const Color(0xffBD1619),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quantity',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color(0xff000000),
                  ),
                ),
                12.verticalSpace,
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 12.83),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffD9D9D9),
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Color(0xffBD1619),
                      ),
                    ),
                    20.horizontalSpace,
                    Text(
                      '2',
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: const Color(0xff121212),
                      ),
                    ),
                    20.horizontalSpace,
                    Container(
                      padding: const EdgeInsets.all(5.83),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffBD1619),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
