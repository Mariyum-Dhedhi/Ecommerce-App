import 'package:ecommercesample_flutter/Utilities/Route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Image.asset("assets/icons/shopping-cart.png",
              width: 100, height: 100),
          SizedBox(
            height: 50,
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 35,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username/Email",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.deepOrange),
                          borderRadius: BorderRadius.circular(40.0),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.deepOrange),
                          borderRadius: BorderRadius.circular(40.0),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "Forgot Password?",
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 60,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: Image.asset("assets/icons/right-arrow.png",
                            width: 30, height: 30),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account? ",
                        style: TextStyle(fontSize: 13),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Sign up",
                          style: const TextStyle(
                              color: Colors.deepOrange, fontSize: 13),
                        ),
                      )
                    ],
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
