// ignore_for_file: unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool hidePasswod = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.only(left: 10),
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background_iOS.png'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 18, right: 18),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: 'USERNAME',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          // hintText: 'USERNAME',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 18, right: 18),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "PHONE NUMBER",
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          //  hintText: 'PHONE NUMBER',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 18, right: 18),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: 'EMAIL ADDRESS',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),

                          /// hintText: 'EMAIL ADDRESS',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 18, right: 18),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      obscureText: hidePasswod,
                      decoration: InputDecoration(
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                hidePasswod = !hidePasswod;
                              });
                            },
                            icon: Icon(hidePasswod
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          //   hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    width: 550,
                    child: Center(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                              '                                  Begin                               ',
                              style: TextStyle(fontSize: 15)),
                        ),
                        color: Colors.green,
                        textColor: Colors.white,
                        elevation: 0,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "already have an account?  ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
