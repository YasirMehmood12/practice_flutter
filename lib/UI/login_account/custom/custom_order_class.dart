import 'package:flutter/material.dart';

class CustomProductModel {
  final AssetImage image;
  final String? text;
  final String? texts;
  final String? dateText;
  final Color? dotColor;
  final String? loadText;

  const CustomProductModel({
        required this.image,
        this.text,
        this.texts,
        this.dateText,
        this.dotColor,
        this.loadText});
}