import 'dart:async';

import 'package:flutter/material.dart';
import 'package:total_parco/utils/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),
        () => Navigator.pushNamed(context, RoutesName.login));
    // Navigator.pushNamed(context, RoutesName.login);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
         Container(

          color: Colors.red,
          child: Center(child: Image.asset('assets/images/logo.png')),
        ),

    );
  }
}
