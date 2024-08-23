import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            margin: EdgeInsets.only(bottom: 40.dg),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              'assets/image/banner.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.dg, vertical: 14.dg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Location',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                            color: const Color(0xffFFFFFF),
                          ),
                        ),
                        SizedBox(height: 8.dg),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0.sp),
                            color: const Color(0xffFFFFFF),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.dg, vertical: 8.dg),
                            child: Row(
                              children: [
                                Image.asset('assets/image/vitri.png'),
                                SizedBox(width: 8.dg),
                                Text(
                                  'JL. Kampung Melon No. 32',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: const Color(0xff121212),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 48.sp,
                      height: 48.sp,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/image/bell.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 42.5.sp),
                Text(
                  'Hungry? We’ve got \n you covered!',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 57.dg),
                Material(
                  elevation: 20.0,
                  shadowColor: const Color(0xff1A1A1A).withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(1000)),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 16.dg, horizontal: 20.dg),
                      filled: true,
                      fillColor: const Color(0xffffffff),
                      border: OutlineInputBorder(
                        gapPadding: 16.sp,
                        borderSide: BorderSide.none,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(1000)),
                      ),
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search Tech Talk',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
