import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/home/home_navi_screen.dart';
import 'package:flutter_ccomerence/widgets/loading_indicator.dart';
import 'package:flutter_ccomerence/widgets/my_button.dart';
import 'package:flutter_ccomerence/widgets/my_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  bool isPassword = true;
  bool isConfirmPassword = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {Navigator.pop(context);},
              child: const Icon(Icons.arrow_back_ios)),
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              10.heightBox,
              const Text("Create An Account",style:TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
              ),
              20.heightBox,
              // text
              const Text('Enter the given details to create an account',
                  style: TextStyle(fontSize: 14)),
              25.heightBox,

              // Email
              const Text('Enter Your Email', style: TextStyle(fontSize: 14)),
              10.heightBox,
              MyTextField(
                controller: _email,
                hintText: "Dummy@gmail.com",
              ),
              25.heightBox,

              // Name
              const Text('User Name', style: TextStyle(fontSize: 14)),
              10.heightBox,
              MyTextField(
                controller: _name,
                hintText: "Gordon",
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
                      isPassword = !isPassword;});
                  },
                  child: Icon(isPassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,color: Colors.black),
                ),
              ),
              25.heightBox,

              // confirm Password
              const Text('Confirm Password', style: TextStyle(fontSize: 14)),
              10.heightBox,
              MyTextField(
                controller: _confirmPassword,
                obscureText: isConfirmPassword,
                hintText: "Confirm Password",
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isConfirmPassword =! isConfirmPassword;});
                  },
                  child: Icon(isConfirmPassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,color: Colors.black),
                ),
              ),

              // button
              50.heightBox,
              isLoading ?loadingIndicator():
              MyButton(
                  onTap: () async {
                    loadingTrue();
                    await Future.delayed(
                        const Duration(seconds: 3),
                            () => _register());
                    loadingFalse();
                    },
                  text: "Confirmation"),
            ],
          ),
        ),
      ),
    );
  }

  _register() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _email.text, password: _password.text)
          .then((value) async {
        String uid = FirebaseAuth.instance.currentUser!.uid;
        await FirebaseFirestore.instance.collection("user").doc(uid).set({
          "name": _name.text,
          "email": _email.text,
          "password": _password.text
        }).then((value) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeNaviScreen()));
          Fluttertoast.showToast(msg: "Sign Up Successfully");
        });
      });
    } on FirebaseException catch (e) {
      Fluttertoast.showToast(msg: e.toString());
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