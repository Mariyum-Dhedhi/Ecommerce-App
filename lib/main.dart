import 'package:ecommercesample_flutter/Pages/home_page.dart';
import 'package:ecommercesample_flutter/Pages/login_page.dart';
import 'package:ecommercesample_flutter/Utilities/Route.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.homeRoute, //bydefault it's /
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
