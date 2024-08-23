import 'package:demo_app/apps/routers/router_name.dart';
import 'package:demo_app/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageNavBar extends StatelessWidget {
  const HomePageNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                Navigator.pushNamed(context, RouterName.nearmePage);
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
    );
  }
}
