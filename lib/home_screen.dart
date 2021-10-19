import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
        ),
        body: Column(
          children: const [
            Text(
              '   Strength Training',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                items: const [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("images/home_ico.png"),
                      ),
                      label: 'home',
                      backgroundColor: Colors.grey),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("images/cart_ico.png"),
                      ),
                      label: 'home',
                      backgroundColor: Colors.grey),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("images/calander_ico.png"),
                      ),
                      label: 'home',
                      backgroundColor: Colors.grey),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("images/user_ico@3x.png"),
                      ),
                      label: 'home',
                      backgroundColor: Colors.grey),
                ],
              ),
            ),
          ],
        ));
  }
}
