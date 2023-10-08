import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/consts/consts.dart';

import '../../../widgets/custom_text.dart';

class CustomOrderModel {
  final AssetImage image;
  final String? text;
  final String? priceText;
  final Icon? addButton;
  final String? textNumber;
  final Icon? subButton;
  final Icon? clearIcon;
  final String? rightText;

  CustomOrderModel({
    required this.image,
    this.text,
    this.priceText,
    this.addButton,
    this.textNumber,
    this.subButton,
    this.rightText = '',
    this.clearIcon,
  });
}
