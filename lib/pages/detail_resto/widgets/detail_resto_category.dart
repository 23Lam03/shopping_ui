import 'package:demo_app/apps/routers/router_name.dart';
import 'package:demo_app/models/detail_resto_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRestoCategory extends StatelessWidget {
  const DetailRestoCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.dg,
        crossAxisSpacing: 20.dg,
        childAspectRatio: 185 / 266,
      ),
      itemCount: mockupDetailRestoData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    if (index == 1) {
                      Navigator.pushNamed(
                          context, RouterName.detailMakananPage);
                    }
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 132,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          mockupDetailRestoData[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 50,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
                            color: Color(0xffFF7916),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 20,
                                child: Icon(
                                  Icons.stars,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              4.horizontalSpace,
                              Text(
                                'Best Seller',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: const Color(0xff121212),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              12.verticalSpace,
              Text(
                mockupDetailRestoData[index].name,
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: const Color(0xff121212),
                ),
              ),
              8.verticalSpace,
              Text(
                mockupDetailRestoData[index].item,
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xff999999),
                ),
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: Text(
                      mockupDetailRestoData[index].rp,
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        color: const Color(0xff121212),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 13.7),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFF5F5),
                        ),
                        child: const Text(
                          '-',
                          style: TextStyle(
                            color: Color(0xffBD1619),
                          ),
                        ),
                      ),
                      12.horizontalSpace,
                      Text(
                        '2',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: const Color(0xff121212),
                        ),
                      ),
                      12.horizontalSpace,
                      Container(
                        padding: const EdgeInsets.all(8.17),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBD1619),
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
