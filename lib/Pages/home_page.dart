import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ecommerce Store",
      //       style: TextStyle(color: Colors.white)
      ),
      //   backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          child: const Text("Ecommerce Store"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
