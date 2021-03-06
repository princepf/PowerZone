import 'dart:async';

import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 1500),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => BottomNavBar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/start.png"))),
          ),
          Container(
            padding: EdgeInsets.only(left: 80, top: 700),
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/pzlogo.png"),
                height: 40,
              ),
              title: Text(
                "PowerZone",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "YesevaOne",
                    // fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),

          //color: Color(0XFFF75B5B),
        ]),
      ),
    );
  }
}
