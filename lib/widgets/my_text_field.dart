import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final int? maxLines ;

  const MyTextField({super.key,
  this.controller,
  required this.hintText,
  this.obscureText = false,
  this.suffixIcon,
  this.maxLines = 1});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(

          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: hintText,
          suffixIcon: suffixIcon,
          border: InputBorder.none,
          enabled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20))),
    );
  }
}