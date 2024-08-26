import 'package:demo_app/apps/routers/router_custom.dart';
import 'package:demo_app/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GlobalLoaderOverlay(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
            onGenerateRoute: RouterCustom.onGenerateRoute,
          ),
        );
      },
      child: LoaderOverlay(
        useDefaultLoading: false,
        overlayWidgetBuilder: (_) {
          //ignored progress for the moment
          return Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.green,
              size: 50,
            ),
          );
        },
        child: const LoginPage(),
      ),
    );
  }
}
