import 'package:demo_app/pages/login/login_page.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Widget> listBody = [
    const LoginPage(),
  ];

  int indexPage = 0;
  void handleOnTap(index) {
    setState(() {
      indexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listBody[indexPage],
    );
  }
}
