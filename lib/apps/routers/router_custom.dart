import 'package:demo_app/apps/routers/router_name.dart';
import 'package:demo_app/pages/category/category_page.dart';
import 'package:demo_app/pages/detail/detail_page.dart';
import 'package:demo_app/pages/detail_makanan/detail_makanan_page.dart';
import 'package:demo_app/pages/detail_resto/detail_resto_page.dart';
import 'package:demo_app/pages/home/home_page.dart';
import 'package:demo_app/pages/login/login_page.dart';
import 'package:demo_app/pages/near_me.dart/near_me_page.dart';
import 'package:demo_app/pages/product/product_page.dart';
import 'package:demo_app/pages/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RouterCustom {
  static PageTransition? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterName.homePage:
        return PageTransition(
          child: const HomePage(),
          type: PageTransitionType.rightToLeft,
        );
      case RouterName.productPage:
        print(settings.arguments);
        String title = settings.arguments as String;
        return PageTransition(
          child: ProductPage(
            title: title,
          ),
          type: PageTransitionType.rightToLeft,
        );
      case RouterName.detailPage:
        print(settings.arguments);
        String title = settings.arguments as String;

        return PageTransition(
          child: DetailPage(
            title: title,
          ),
          type: PageTransitionType.rightToLeft,
        );
      case RouterName.categoryPage:
        print(settings.arguments);
        String title = settings.arguments as String;

        return PageTransition(
          child: CategoryPage(
            title: title,
          ),
          type: PageTransitionType.rightToLeft,
        );
      case RouterName.searchPage:
        print(settings.arguments);
        String title = settings.arguments as String;

        return PageTransition(
          child: SearchPage(
            title: title,
          ),
          type: PageTransitionType.rightToLeft,
        );
      case RouterName.nearmePage:
        return PageTransition(
          child: const NearMePage(),
          type: PageTransitionType.rightToLeft,
        );
      case RouterName.detailRestoPage:
        return PageTransition(
          child: const DetailRestoPage(),
          type: PageTransitionType.rightToLeft,
        );
      case RouterName.loginPgae:
        return PageTransition(
          child: const LoginPage(),
          type: PageTransitionType.rightToLeft,
        );
      case RouterName.detailMakananPage:
        return PageTransition(
          child: const DetailMakananPage(),
          type: PageTransitionType.rightToLeft,
        );
      default:
    }
    return null;
  }
}
