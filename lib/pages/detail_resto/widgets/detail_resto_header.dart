import 'package:demo_app/utils/get_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailRestoHeader extends StatelessWidget {
  const DetailRestoHeader({
    super.key,
    required this.scrollOffset,
  });

  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(context),
      color: Colors.white,
      child: Column(
        children: [
          Opacity(
            opacity: scrollOffset > 100 ? 0 : 1 - (scrollOffset / 100),
            child: SizedBox(
              width: getWidth(context),
              height: 193.dg,
              child: Image.asset(
                'assets/image/banerresto.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
