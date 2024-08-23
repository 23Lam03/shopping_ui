import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NearMeHeader extends StatelessWidget {
  const NearMeHeader({
    super.key,
    required this.safePadding,
  });

  final double safePadding;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 430 / (316 + safePadding),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                'assets/image/bannernearme.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 80.dg,
            child: Container(
                decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
            )),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.dg, vertical: 14.dg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(Icons.chevron_left),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.sp),
                          color: Colors.white,
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
                  32.verticalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Near Me',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 28.sp,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                      8.verticalSpace,
                      Text(
                        'Choose from Nearby Restaurants \n with Deliciousness Awaiting',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: const Color(0xffF0F0F0),
                        ),
                      ),
                    ],
                  ),
                  34.verticalSpace,
                  Material(
                    elevation: 20.0,
                    shadowColor: const Color(0xff1A1A1A).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(1000),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 16.dg, horizontal: 20.dg),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'What do you want to eat?',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
