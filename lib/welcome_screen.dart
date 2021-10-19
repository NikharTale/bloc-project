import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(30),
      alignment: Alignment.topLeft,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background_iOS.png'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome to',
            style: TextStyle(
                color: Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Just Results',
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Stack places the children widgets in order with the first child being at the bottom and the last child being at the top.',
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'places the children widgets in order with the first child being at the bottom and the last child being at the top.',
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 360,
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: const Text('Get Started ', style: TextStyle(fontSize: 20)),
              color: Colors.green,
              textColor: Colors.white,
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ],
      ),
    )
        // Stack(
        //   children: [
        //     DecoratedBox(
        //       decoration: BoxDecoration(
        //           image: DecorationImage(
        //               image: AssetImage('images/background_iOS.png'),
        //               fit: BoxFit.cover)),
        //       child: (Align(
        //           alignment: Alignment.bottomCenter,
        //           child:
        //               Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        //             Container(
        //               margin: EdgeInsets.only(bottom: 20),
        //               child: SizedBox(
        //                 width: 380,
        //                 height: 60,
        //                 child: RaisedButton(
        //                   onPressed: () {},
        //                   child: Text('Get Started ',
        //                       style: TextStyle(fontSize: 20)),
        //                   color: Colors.green,
        //                   textColor: Colors.white,
        //                   elevation: 20,
        //                   shape: new RoundedRectangleBorder(
        //                     borderRadius: new BorderRadius.circular(30.0),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ]))),
        //     )
        //   ],
        // ),
        );
  }
}
