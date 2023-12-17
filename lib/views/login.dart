import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:total_parco/utils/components/input.dart';
import 'package:total_parco/utils/components/primary_button.dart';
import 'package:total_parco/utils/extension.dart';
import 'package:total_parco/utils/routes/routes.dart';
import 'package:total_parco/viewModals/form_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  var isLoading = false;
  var emailField = TextEditingController();
  var passwordField = TextEditingController();
  late FormProvider _formProvider;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final _formProvider = Provider.of<FormProvider>(context);
    return Scaffold(
      body:
      SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            reverse: true,
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

                  CustomFormField(
                    label: 'Email',
                    placeholder: "Enter",
                    error: _formProvider.email.error,
                    textEditingController: emailField,
                    inputFormatters: [],
                    inputValidator: (val) {},
                    onChangeValue: _formProvider.validateEmail,
                    obsecureText: false,
                    leftIcon: null,
                    leftIconPress: null,
                  ),

                  // CustomFormField(
                  //     onChangeValue: (val) {
                  //       emailField = val;
                  //     },
                  //     keyboardType: TextInputType.emailAddress,
                  //     controller: emailField,
                  //     label: "Email",
                  //     placeholder: 'Enter',
                  //     inputFormatters: [],
                  //     inputValidator: (val) {
                  //       if (val!.isEmpty) {
                  //         return 'Enter your email';
                  //       } else if (!val.isValidEmail) {
                  //         return 'Enter valid email';
                  //       }
                  //     }),
                  SizedBox(
                    height: height * 0.03,
                  ),

                  CustomFormField(
                    label: 'Password',
                    placeholder: "Enter",
                    textEditingController: passwordField,
                    error: _formProvider.password.error,
                    inputFormatters: [],
                    inputValidator: (val) {},
                    onChangeValue: _formProvider.validatePassword,
                    obsecureText: true,
                    leftIcon: null,
                    leftIconPress: null,
                  ),

                  // CustomFormField(
                  //     onChangeValue: (val) {
                  //       passwordField = val;
                  //     },
                  //     keyboardType: TextInputType.text,
                  //     controller: passwordField,
                  //     label: "Password",
                  //     placeholder: 'Enter',
                  //     inputFormatters: [],
                  //     inputValidator: (val) {
                  //       if (val!.isEmpty) {
                  //         return 'Enter your password';
                  //       } else if (passwordField.text.length < 6) {
                  //         return 'Password length should be greater than 6';
                  //       }
                  //     }),
                  SizedBox(
                    height: height * 0.04,
                  ),

                  Consumer<FormProvider>(builder: (context, model, child) {
                    return ButtonComponent(
                      title: 'Login',
                      isLoader: isLoading,
                      onPress: () {
                        if (model.validate) {
                          isLoading = true;
                          FocusScope.of(context).unfocus();

                          Future.delayed(const Duration(seconds: 3), () {
                            isLoading = false;
                            Navigator.pushNamed(
                                context, RoutesName.bottomTabBar);

                            emailField.clear();
                            passwordField.clear();


                          });
                        }
                        // if (_formKey.currentState!.validate()) {
                        //   Navigator.pushNamed(context, RoutesName.bottomTabBar);
                        //   emailField.text = '';
                        //   passwordField.text = '';
                        // }
                      },
                    );
                  }),

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
      ),
    );
  }
}
