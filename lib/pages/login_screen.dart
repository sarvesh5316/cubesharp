// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:countries_flag/countries_flag.dart';
import 'package:cubesharp/consts/consts.dart';
import 'package:cubesharp/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController passcontroller = TextEditingController();
  int phone = 0;
  String password = "test@78563";

  bool _isObscured = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    Text("Welcome Back!",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 150,
                            width: 320,
                            child: PhysicalModel(
                              color: Colors.white,
                              elevation: 10,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      "Enter Phone Number",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 25),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CountriesFlag(
                                          Flags.india,
                                          width: 25,
                                          height: 30,
                                          fit: BoxFit.cover,
                                          alignment: Alignment.topCenter,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "+91",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              125,
                                          height: 35,
                                          child: TextField(
                                            key: ValueKey(phone),
                                            keyboardType: TextInputType.phone,
                                            maxLength: 10,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.zero,
                                              border: InputBorder.none,
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              hintText: "Phone Number",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: redColor,
                                  fixedSize: Size(200, 40)),
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext builder) {
                                      return Container(
                                        margin: EdgeInsets.only(left: 25),
                                        height: 400,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          children: [
                                            SizedBox(height: 30),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "Enter Password",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            SizedBox(
                                              width: 320,
                                              child: TextField(
                                                  controller: passcontroller,
                                                  keyboardType: TextInputType
                                                      .visiblePassword,
                                                  obscureText: _isObscured,
                                                  decoration: InputDecoration(
                                                      fillColor: Colors.black12,
                                                      suffixIcon: IconButton(
                                                          onPressed:
                                                              _togglePasswordVisibility,
                                                          icon: Icon(
                                                            _isObscured
                                                                ? Icons
                                                                    .visibility
                                                                : Icons
                                                                    .visibility_off,
                                                          )),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7),
                                                      ),
                                                      hintText: "Password")),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text("forget Password?"),
                                              ),
                                            ),
                                            ElevatedButton(
                                              key: _formkey,
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(200, 40),
                                                backgroundColor: redColor,
                                              ),
                                              onPressed: () {
                                                // print(
                                                //     "${password} and ${passcontroller.text}");
                                                if (password ==
                                                    passcontroller.text) {
                                                  Get.to(() => HomeScreen());
                                                } else {
                                                  _showWrongPasswordDialog(
                                                      context);
                                                }
                                              },
                                              child: Text(
                                                'Verify Password',
                                                style: TextStyle(
                                                    color: whiteColor),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Text(
                                "Proceed",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _showWrongPasswordDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Wrong Password'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('The password you entered is incorrect.'),
              Text('Please try again.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        ],
      );
    },
  );
}
