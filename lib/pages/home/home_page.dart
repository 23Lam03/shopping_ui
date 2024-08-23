import 'package:demo_app/pages/home/widgets/home_page_category.dart';
import 'package:demo_app/pages/home/widgets/home_page_header.dart';
import 'package:demo_app/pages/home/widgets/home_page_nav_bar.dart';
import 'package:demo_app/pages/home/widgets/home_page_special.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomePageHeader(),
            24.verticalSpace,
            const HomePageNavBar(),
            40.verticalSpace,
            const HomePageCategory(),
            const HomePageSpecial()
          ],
        ),
      ),
    );
  }
}
