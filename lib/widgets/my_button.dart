import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function()? onTap;

  const MyButton({super.key,
    this.text = "",
    this.onTap,
    this.color,
    this.fontSize,
    this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xff3669C9),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(text!, style: TextStyle(
                  color: Colors.white,
                fontSize: fontSize,
                  fontWeight: fontWeight),
              )
          )
      ),
    );
  }
}