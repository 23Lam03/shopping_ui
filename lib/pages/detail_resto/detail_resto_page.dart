import 'package:demo_app/pages/detail_resto/widgets/deati_resto_nav_bar.dart';
import 'package:demo_app/pages/detail_resto/widgets/detail_resto_add_to_cart.dart';
import 'package:demo_app/pages/detail_resto/widgets/detail_resto_category.dart';
import 'package:demo_app/pages/detail_resto/widgets/detail_resto_detail.dart';
import 'package:demo_app/pages/detail_resto/widgets/detail_resto_header.dart';
import 'package:demo_app/pages/detail_resto/widgets/detail_resto_promo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailRestoPage extends StatefulWidget {
  const DetailRestoPage({super.key});

  @override
  State<DetailRestoPage> createState() => _DetailRestoPageState();
}

class _DetailRestoPageState extends State<DetailRestoPage> {
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
          DetailRestoHeader(scrollOffset: scrollOffset),
          SingleChildScrollView(
            controller: scrollController,
            child: SafeArea(
              child: Column(
                children: [
                  28.verticalSpace,
                  const DetailRestoNavBar(),
                  40.verticalSpace,
                  const DetailRestoDetail(),
                  28.verticalSpace,
                  const DetailRestoPromo(),
                  28.verticalSpace,
                  const DetailRestoCategory(),
                ],
              ),
            ),
          ),
          const DetailRestoAddToCart(),
        ],
      ),
    );
  }
}
