import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRestoDetail extends StatelessWidget {
  const DetailRestoDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.dg),
          color: const Color(0xffFFFFFF),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sate Kambing Pak Slamet',
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: const Color(0xff121212),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 16.dg,
                          height: 16.dg,
                          child: Image.asset('assets/image/vitri.png'),
                        ),
                        8.horizontalSpace,
                        Text(
                          'JL. Sultan Hasanudin No. 123',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: const Color(0xff999999),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8.dg),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffCE181B),
                  ),
                  child: const Icon(Icons.map, color: Colors.white),
                ),
              ],
            ),
            32.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                          height: 20.h,
                          child: Image.asset('assets/image/grade.png'),
                        ),
                        Text(
                          '4.9',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    8.verticalSpace,
                    Text(
                      '200+ ratings',
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: const Color(0xff999999),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                          height: 20.h,
                          child: Image.asset('assets/image/time.png'),
                        ),
                        Text(
                          '10 - 20 min',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    8.verticalSpace,
                    Text(
                      'Delivery Time',
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: const Color(0xff999999),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                          height: 20.h,
                          child: Image.asset('assets/image/rp.png'),
                        ),
                        Text(
                          'Rp 10,000',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    8.verticalSpace,
                    Text(
                      'Delivery Fee',
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: const Color(0xff999999),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
