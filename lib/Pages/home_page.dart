import 'package:ecommercesample_flutter/Widgets/Drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "                BASKET",
          style: TextStyle(color: Colors.black, fontSize: 20, letterSpacing: 1),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          child: const Text("Ecommerce Store"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
