import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRestoAddToCart extends StatelessWidget {
  const DetailRestoAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 24,
      left: 20,
      right: 20,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000.dg),
          color: const Color(0xffCE181B),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Price',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                4.verticalSpace,
                Text(
                  'Rp 46.000',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 14.sp,
                    color: const Color(0xfffffffff),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: const Color(0xffFFFFFF),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.shopping_basket_outlined,
                    color: Color(0xffCE181B),
                  ),
                  8.horizontalSpace,
                  Text(
                    'Add to cart',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                      color: const Color(0xff121212),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
