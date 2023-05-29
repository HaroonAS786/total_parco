import 'package:flutter/material.dart';
import 'package:total_parco/utils/components/input.dart';
import 'package:total_parco/utils/components/primary_button.dart';
import 'package:total_parco/utils/routes/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Image.asset('assets/images/header_logo.png'),
                SizedBox(
                  height: height * 0.05,
                ),
                const Text(
                  "Login to your account",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.004,
                ),
                const Text(
                  "Enter your credentials to login to your account.",
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Input(label: 'Email', placeholder: 'Enter'),
                SizedBox(
                  height: height * 0.04,
                ),
                Input(label: 'Password', placeholder: 'Enter'),
                SizedBox(
                  height: height * 0.04,
                ),
              ButtonComponent(title: 'Login',onPress: (){
                Navigator.pushNamed(context, RoutesName.bottomTabBar);
              },),
                SizedBox(
                  height: height * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.forgotPassword);
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


