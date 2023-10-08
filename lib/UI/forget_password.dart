import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/verification_screen.dart';
import 'package:flutter_ccomerence/widgets/my_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/my_text_field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.heightBox,
              const Text('Rest Password',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              20.heightBox,
              const Center(
                  child: Text(
                "Enter your Email that we will send password"
                "changing email",
                style: TextStyle(),
              )),
              70.heightBox,

              ///Forget Password
              const Text('Email/ Phone', style: TextStyle(fontSize: 14)),
              10.heightBox,
              MyTextField(
                  controller: _email, hintText: "Gordon50app@gmail.com"),

              // button
              60.heightBox,
              MyButton(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(
                        builder: (context) => const VerificationScreeen(),
                      ));
                },
                text: "Reset",
              )
            ],
          ),
        ),
      ),
    );
  }
}
