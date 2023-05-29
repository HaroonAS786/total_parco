import 'package:flutter/material.dart';
import 'package:total_parco/utils/routes/routes.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      body: SafeArea(
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
                "Forgot Password?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.004,
              ),
              const Text(
                "Enter your email here to get the link to reset it",
                style: TextStyle(fontSize: 14, color: Colors.black45),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              textInputField("Email", "Enter", null, null, null, null),
              SizedBox(
                height: height * 0.04,
              ),
              button("Send reset links", () {
                Navigator.pushNamed(context, RoutesName.login);
              }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textInputField(
    label, placeholder, value, onChangeValue, controller, focus) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(label),
          const SizedBox(
            width: 4,
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 6.0),
              child: Icon(
                Icons.star,
                color: Colors.red,
                size: 8,
              ))
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.emailAddress,
            focusNode: focus,
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              contentPadding: EdgeInsetsDirectional.only(start: 10.0),
              hintText: placeholder,
            ),
          ))
    ],
  );
}

Widget button(title, onPress) {
  return Container(
    height: 44,
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.redAccent,
      ),
      onPressed: onPress,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  );
}
