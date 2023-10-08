import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/forget_password.dart';
import 'package:flutter_ccomerence/UI/home/home_navi_screen.dart';
import 'package:flutter_ccomerence/UI/profile_screen.dart';
import 'package:flutter_ccomerence/UI/signup_screen.dart';
import 'package:flutter_ccomerence/widgets/loading_indicator.dart';
import 'package:flutter_ccomerence/widgets/my_button.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/custom_text.dart';
import '../widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isPassword = true;
  bool? isCheck = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              85.heightBox,
              const CustomText(text: "LOGO",
                fontSize: 24, fontWeight: FontWeight.bold),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text
                        const CustomText(text:'Hi, Welcome Back! 👋',
                                fontSize: 24, fontWeight: FontWeight.bold),
                        25.heightBox,
                        // Email
                        const Text('Email', style: TextStyle(fontSize: 14)),
                        10.heightBox,
                        MyTextField(
                          controller: _email,
                          hintText: "example@gmail.com",
                        ),
                        25.heightBox,
                        // Password
                        const Text('Password', style: TextStyle(fontSize: 14)),
                        10.heightBox,
                        MyTextField(
                          controller: _password,
                          obscureText: isPassword,
                          hintText: "Enter Your Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPassword = !isPassword;
                              });
                            },
                            child: Icon(
                                isPassword
                                    ? Icons.visibility_sharp
                                    : Icons.visibility_off_sharp,
                                color: Colors.black),
                          ),
                        ),
                        //check and forget button
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                value: isCheck,
                                onChanged: (newvalue) {
                                  setState(() {
                                    isCheck = newvalue;
                                  });
                                }),
                            const Text(
                              'Remember Me',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetPassword()));
                              },
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xffE86969)),
                              ),
                            ),
                          ],
                        ),
                        // button
                        10.heightBox,
                        isLoading
                            ? loadingIndicator()
                            : MyButton(
                                onTap: () async {
                                  loadingTrue();
                                  await Future.delayed(
                                      const Duration(seconds: 3),
                                      () => _login());
                                  loadingFalse();
                                },
                                text: "Login",
                              ),
                        // don't have an account signup
                        20.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomText(text: "Don't hava an account ?  ",
                              fontWeight: FontWeight.bold, fontSize: 16),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpScreen(),
                                      ));
                                },
                                child: const CustomText(text: "Sign Up",
                                    color: Color(0xff3669C9),
                                    fontSize: 16)),
                          ],
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  //login with firebase backend
  _login() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _email.text, password: _password.text)
          .then((value) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeNaviScreen()));
        Fluttertoast.showToast(msg: "Logging Successfully");
      });
    } on FirebaseException catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      // VxToast.show(context, msg: e.toString());
    }
  }

  // loading method
  loadingTrue() {
    setState(() {
      isLoading = true;
    });
  }
  loadingFalse() {
    setState(() {
      isLoading = false;
    });
  }
}
