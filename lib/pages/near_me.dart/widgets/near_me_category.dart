import 'package:demo_app/apps/routers/router_name.dart';
import 'package:demo_app/models/near_me_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NearMeCategory extends StatelessWidget {
  const NearMeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: mockupNearMeData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  if (index == 1) {
                    Navigator.pushNamed(context, RouterName.detailRestoPage);
                  }
                },
                child: Container(
                  width: 124.dg,
                  height: 164.dg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.dg),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(mockupNearMeData[index].image),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mockupNearMeData[index].name,
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: const Color(0xff121212),
                      ),
                    ),
                    8.verticalSpace,
                    Text(
                      mockupNearMeData[index].item,
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color(0xff999999),
                      ),
                    ),
                    16.verticalSpace,
                    Row(
                      children: [
                        Image.asset('assets/image/rp.png'),
                        4.horizontalSpace,
                        Text(
                          mockupNearMeData[index].rp,
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: const Color(0xff121212),
                          ),
                        ),
                      ],
                    ),
                    16.verticalSpace,
                    Row(
                      children: [
                        Image.asset('assets/image/time.png'),
                        4.horizontalSpace,
                        Text(
                          mockupNearMeData[index].time,
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff999999),
                          ),
                        )
                      ],
                    ),
                    8.verticalSpace,
                    Row(
                      children: [
                        Image.asset('assets/image/grade.png'),
                        4.horizontalSpace,
                        Text(
                          mockupNearMeData[index].evaluate,
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff999999),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
