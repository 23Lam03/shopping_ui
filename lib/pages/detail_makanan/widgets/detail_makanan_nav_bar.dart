import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailMakananNavBar extends StatelessWidget {
  const DetailMakananNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(12.dg),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFFFFFF),
            ),
            child: const Icon(Icons.chevron_left),
          ),
        ),
        12.horizontalSpace,
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFFFFFF),
          ),
          child: const Icon(Icons.share),
        ),
      ],
    );
  }
}
