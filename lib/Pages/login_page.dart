import 'package:ecommercesample_flutter/Pages/home_page.dart';
import 'package:ecommercesample_flutter/Utilities/Route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(children: [
            SizedBox(
              height: 250,
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Image.asset("assets/icons/shopping-cart.png",
                            width: 50, height: 50),
                        SizedBox(
                          width: 20,
                        ),
                        Text.rich(
                          TextSpan(
                            style: TextStyle(
                              letterSpacing: 3,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                  text: "BASKE",
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: "T",
                                  style: TextStyle(color: Colors.deepOrange))
                            ],
                          ),
                        )
                      ],
                    ),
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
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                          return "Invalid Username";
                        }
                        return null;
                      },
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
                          )),
                          validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
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
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, MyRoutes.homeRoute);
                            }
                          },
                          child: Image.asset("assets/icons/right-arrow.png",
                              width: 30, height: 30), //Image Widget
                        )),
                    SizedBox(
                      height: 10,
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
      ),
    );
  }
}
