import 'package:demo_app/pages/near_me.dart/widgets/near_me_category.dart';
import 'package:demo_app/pages/near_me.dart/widgets/near_me_header.dart';
import 'package:demo_app/pages/near_me.dart/widgets/near_me_nav_bar.dart';
import 'package:flutter/material.dart';

class NearMePage extends StatelessWidget {
  const NearMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final safePadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NearMeHeader(safePadding: safePadding),
            const NearMeNavBar(),
            const NearMeCategory(),
          ],
        ),
      ),
    );
  }
}
