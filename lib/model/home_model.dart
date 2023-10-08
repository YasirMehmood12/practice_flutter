import 'package:flutter/cupertino.dart';

class HomeModel{
  final Container? container;
  final String? text;
  HomeModel({this.text, this.container});
}

class HomeContainer{
  final Container? container;
  final Widget? column;
  final Widget? navi;
  HomeContainer({this.navi,this.column, this.container});
}