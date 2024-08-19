import 'package:demo_app/models/cuisines_model.dart';
import 'package:demo_app/models/slider_model.dart';
import 'package:demo_app/models/special_model.dart';
import 'package:demo_app/pages/category/new_me_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.dg, vertical: 14.dg),
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(1000)),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16.dg, horizontal: 20.dg),
                              filled: true,
                              fillColor: const Color(0xffffffff),
                              border: OutlineInputBorder(
                                gapPadding: 16.sp,
                                borderSide: BorderSide.none,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(1000)),
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
            ),
            SizedBox(height: 24.dg),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.dg),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 20.dg,
                  crossAxisSpacing: 0.dg,
                  childAspectRatio: 1 / 1.06,
                ),
                itemCount: mockupSliderData.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewMePage()),
                        );
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.dg),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 56.dg,
                            height: 56.dg,
                            child: Image.asset(
                              mockupSliderData[index].image,
                            ),
                          ),
                          SizedBox(height: 12.dg),
                          Expanded(
                            child: Text(
                              mockupSliderData[index].name,
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff121212)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40.dg),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cuisines',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: const Color(0xff121212),
                        ),
                      ),
                      Text(
                        'View all',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: const Color(0xffCE181B),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 150.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mockupCuisinesModel.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.dg, vertical: 20.dg),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 48.dg,
                                height: 48.dg,
                                child: Image.asset(
                                  mockupCuisinesModel[index].image,
                                ),
                              ),
                              SizedBox(height: 12.dg),
                              Text(
                                mockupCuisinesModel[index].name,
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: const Color(0xff121212),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Special For You',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: const Color(0xff121212),
                        ),
                      ),
                      Text(
                        'View all',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: const Color(0xffCE181B),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: mockupSpecialData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              width: 185.dg,
                              height: 233.dg,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.dg),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset(
                                mockupSpecialData[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 12.dg),
                            Text(
                              mockupSpecialData[index].name,
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: const Color(0xff121212),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                mockupSpecialData[index].price,
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14.sp,
                                  color: const Color(0xff121212),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
