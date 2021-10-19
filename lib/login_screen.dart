// ignore_for_file: must_call_super

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_one/blocs/login/login_bloc.dart';
import 'package:task_one/register_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginBloc = LoginBloc();
  final _formKey = GlobalKey<FormState>();
  // String? loginE;
  // String? loginP;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool hidePasswod = true;
  // @override
  // void initState() {
  //   loginBloc.add(LoginInWithEmailButtonPressed(
  //       email: "emailController.text", password: "passController.text"));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background_iOS.png'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: const [
                    Text(
                      "Welcome!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  validator: (value) {
                    if (value != null) {
                      return "* Required";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (input) => emailController.text = input!,
                  controller: emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      labelText: 'Email or Phone',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: Colors.white,
                      // hintText: 'Email or Phone',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  validator: (value) {
                    if (value != null) {
                      return "* Required";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (input) => passController.text = input!,
                  controller: passController,
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
                      labelText: "PASSWORD",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      //  hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      ' Forget Password?',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<LoginBloc, LoginState>(
                  builder: (BuildContext context, LoginState state) {
                bloc:
                loginBloc;
                if (state is LoginProgress) {
                  const CircularProgressIndicator();
                } else if (state is LoginFailed) {
                  // ignore: deprecated_member_use
                  // Scaffold.of(context).showSnackBar(
                  //   const SnackBar(
                  //     content: Text('Invalid Password'),
                  //     backgroundColor: Colors.red,
                  //   ),
                  // );
                }

                return ElevatedButton(
                  onPressed: () {
                    loginBloc.add(LoginInWithEmailButtonPressed(
                        email: emailController.text,
                        password: passController.text));
                    // _formKey.currentState!.save();
                    // loginBloc.add(LoginInWithEmailButtonPressed(
                    //     email: emailController.text,
                    //     password: passController.text));
                    // if (_formKey.currentState.validate())) {
                    //   loginBloc.add(LoginInWithEmailButtonPressed(
                    //       email: emailController.text,
                    //       password: passController.text));
                    // }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('          Continue with Email           ',
                        style: TextStyle(fontSize: 15)),
                  ),
                  //  color: Colors.green,
                  // textColor: Colors.white,
                  //  elevation: 0,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(30.0),
                );
              }),
              //       if (state is LoginProgress) {
              //         const CircularProgressIndicator();
              //       } else if (state is LoginFailed) {
              //         // ignore: deprecated_member_use
              //         Scaffold.of(context).showSnackBar(
              //           const SnackBar(
              //             content: Text('Invalid Password'),
              //             backgroundColor: Colors.red,
              //           ),
              //         );
              //       })
              // BlocConsumer<LoginBloc, LoginState>(
              //     bloc: loginBloc,
              //     listener: (BuildContext context, LoginState state) {
              //       if (state is LoginSuccess) {
              //         Navigator.pushReplacement(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => const HomeScreen()));
              //       }
              //     },
              //     builder: (BuildContext context, LoginState state) {
              //       if (state is LoginProgress) {
              //         const CircularProgressIndicator();
              //       } else if (state is LoginFailed) {
              //         // ignore: deprecated_member_use
              //         Scaffold.of(context).showSnackBar(
              //           const SnackBar(
              //             content: Text('Invalid Password'),
              //             backgroundColor: Colors.red,
              //           ),
              //         );
              //       }

              //       return ElevatedButton(
              //         onPressed: () {
              //            loginBloc.add(LoginInWithEmailButtonPressed(
              //               email: emailController.text,
              //               password: passController.text));
              //           // _formKey.currentState!.save();
              //           // loginBloc.add(LoginInWithEmailButtonPressed(
              //           //     email: emailController.text,
              //           //     password: passController.text));
              //           // if (_formKey.currentState.validate())) {
              //           //   loginBloc.add(LoginInWithEmailButtonPressed(
              //           //       email: emailController.text,
              //           //       password: passController.text));
              //           // }
              //         },
              //         child: const Padding(
              //           padding: EdgeInsets.all(20.0),
              //           child: Text('          Continue with Email           ',
              //               style: TextStyle(fontSize: 15)),
              //         ),
              //         //  color: Colors.green,
              //         // textColor: Colors.white,
              //         //  elevation: 0,
              //         //   shape: RoundedRectangleBorder(
              //         //     borderRadius: BorderRadius.circular(30.0),
              //       );

              //       // return widget here based on BlocA's state
              //     }),
              SizedBox(
                height: 25,
                child: Row(
                  children: [
                    // padding: EdgeInsets.only(left: 15, right: 15),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: const [
                            Divider(
                                height: 20, thickness: 1, color: Colors.grey),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: const [
                          Text(
                            "OR",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: const [
                            Divider(
                                height: 20, thickness: 1, color: Colors.grey),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                width: 550,
                child: Center(
                  // ignore: deprecated_member_use
                  child:
                      //      Container(
                      //   margin: const EdgeInsets.only(left: 35, right: 35),
                      //   decoration: const BoxDecoration(
                      //     borderRadius: BorderRadius.only(
                      //         topRight: Radius.circular(500.0),
                      //         bottomRight: Radius.circular(40.0),
                      //         topLeft: Radius.circular(40.0),
                      //         bottomLeft: Radius.circular(40.0)),
                      //   ),
                      //   // ignore: deprecated_member_use
                      //   child: FlatButton(
                      //       color: Colors.black,
                      //       onPressed: () {},
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           const Text(
                      //             ' Continue with Apple ',
                      //             style: TextStyle(color: Colors.white, fontSize: 18),
                      //           ),
                      //           Padding(
                      //             padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      //             child: Image.asset('images/apple_ico@2x.png'),
                      //           )
                      //         ],
                      //       )),
                      // )
                      // ignore: deprecated_member_use
                      RaisedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('          Continue with Apple           ',
                          style: TextStyle(fontSize: 15)),
                    ),
                    color: Colors.black,
                    textColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?  ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: const Text(
                      "Register",
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
      ),
    );
  }

  // Future<void> login(loginP, loginE) async {
  //   if (loginE.isNotEmpty && loginP.isNotEmpty) {
  //     final response = await http.post(Uri.parse('https://reqres.in/api/login'),
  //         body: {'email': loginE, 'password': loginP});
  //     // print(response.body);
  //     if (response.statusCode == 200) {
  //       Navigator.pushReplacement(context,
  //           MaterialPageRoute(builder: (context) => const HomeScreen()));
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //         content: Text('Invalid Email or Password'),
  //       ));
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //       content: Text('Blank Fied are  Not Allowed'),
  //     ));
  //   }
  // }
}


// RaisedButton(
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
                          
//                         }
//                         {
                         
//                         }
//                       },
//                       child: const Padding(
//                         padding: EdgeInsets.all(20.0),
//                         child: Text('          Continue with Email           ',
//                             style: TextStyle(fontSize: 15)),
//                       ),
//                       color: Colors.green,
//                       textColor: Colors.white,
//                       elevation: 0,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                     ),