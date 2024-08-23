import 'package:demo_app/models/special_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageSpecial extends StatelessWidget {
  const HomePageSpecial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                childAspectRatio: 185 / 233),
            itemCount: mockupSpecialData.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.dg),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        width: double.infinity,
                        height: double.infinity,
                        mockupSpecialData[index].image,
                        fit: BoxFit.cover,
                      ),
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
                  Text(
                    mockupSpecialData[index].price,
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w800,
                      fontSize: 14.sp,
                      color: const Color(0xff121212),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
