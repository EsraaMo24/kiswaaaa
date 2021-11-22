import 'package:flutter/material.dart';
import 'package:kiswaa/shared/colors.dart';

import 'package:splashscreen/splashscreen.dart';

import 'loginscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: SplashScreen(
            photoSize: 200,
            seconds: 1,
            loaderColor: MyColors.red,
            navigateAfterSeconds: loginscreen(),
            image: new Image.asset('assets/images/login.png'),
          ),
        ),
      ),
    );
  }
}
