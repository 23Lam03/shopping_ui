import 'package:demo_app/models/detail_makanan_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailMakananCategory extends StatelessWidget {
  const DetailMakananCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 132 / 185,
      ),
      itemCount: mockupDetailMakananData.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      mockupDetailMakananData[index].image,
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
                        ),
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
            12.verticalSpace,
            Text(
              mockupDetailMakananData[index].name,
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: const Color(0xff121212),
              ),
            ),
            8.verticalSpace,
            Text(
              mockupDetailMakananData[index].item,
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
                    mockupDetailMakananData[index].rp,
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: const Color(0xff121212),
                    ),
                  ),
                ),
                10.horizontalSpace,
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffD9D9D9),
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Color(0xffBD1619),
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
                      padding: const EdgeInsets.all(5),
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
        );
      },
    );
  }
}
