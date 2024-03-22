import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maskot_app/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Get.to(Login());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splash1.png"),
            ),
            gradient: LinearGradient(colors: [
              Color(0xff094454),
              Color(0xff40723C),
              Color(0xffB3D208),
            ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
          ),
          child: Center(
              child: Image.asset(
            "assets/images/maskot.png",
          )),
        ),
      ),
    );
  }
}
