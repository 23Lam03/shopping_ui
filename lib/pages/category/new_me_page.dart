import 'package:demo_app/models/mockup_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewMePage extends StatelessWidget {
  const NewMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    'assets/image/bannernewme.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.dg, vertical: 14.dg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.chevron_left),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF7F7F7),
                      ),
                      child: const Icon(Icons.tune),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: const Color(0xffF7F7F7),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Cuisines',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: const Color(0xff000000),
                            ),
                          ),
                          const Icon(Icons.expand_more),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: const Color(0xffF7F7F7),
                      ),
                      child: Text(
                        'Rated 4.5+',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: const Color(0xffF7F7F7),
                      ),
                      child: Text(
                        'Promo',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: const Color(0xff000000),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          ListView.builder(
            itemCount: mockupNewMeData.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.dg),
                    ),
                    child: Image.asset(mockupNewMeData[index].image),
                  ),
                  Row(
                    children: [
                      Text(
                        mockupNewMeData[index].name,
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                          color: const Color(0xff121212),
                        ),
                      ),
                      Text(
                        mockupNewMeData[index].item,
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff999999),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
