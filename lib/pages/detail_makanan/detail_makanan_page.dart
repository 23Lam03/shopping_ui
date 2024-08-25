import 'package:demo_app/pages/detail_makanan/widgets/detail_makanan_add_to_cart.dart';
import 'package:demo_app/pages/detail_makanan/widgets/detail_makanan_category.dart';
import 'package:demo_app/pages/detail_makanan/widgets/detail_makanan_detail.dart';
import 'package:demo_app/pages/detail_makanan/widgets/detail_makanan_header.dart';
import 'package:demo_app/pages/detail_makanan/widgets/detail_makanan_nav_bar.dart';
import 'package:demo_app/pages/detail_makanan/widgets/detail_makanan_other_menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailMakananPage extends StatefulWidget {
  const DetailMakananPage({super.key});

  @override
  State<DetailMakananPage> createState() => _DetailMakananPageState();
}

class _DetailMakananPageState extends State<DetailMakananPage> {
  ScrollController scrollController = ScrollController();
  double scrollOffset = 0;

  @override
  void initState() {
    scrollController.addListener(() {
      setState(() {
        scrollOffset = scrollController.offset;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DetailMakananHeader(scrollOffset: scrollOffset),
          SingleChildScrollView(
            controller: scrollController,
            child: SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    child: DetailMakananNavBar(),
                  ),
                  158.verticalSpace,
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const DetailMakananDetail(),
                          60.verticalSpace,
                          const DetailMakananOtherMenus(),
                          const DetailMakananCategory(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const DetailMakananAddToCart()
        ],
      ),
    );
  }
}
