import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/home/all_category.dart';
import 'package:flutter_ccomerence/UI/home/home_screen.dart';
import 'package:flutter_ccomerence/UI/login_account/profile_setting.dart';
import 'package:flutter_ccomerence/UI/order/order_screen.dart';

class HomeNaviScreen extends StatefulWidget {
  const HomeNaviScreen({Key? key}) : super(key: key);

  @override
  State<HomeNaviScreen> createState() => _HomeNaviScreenState();
}

class _HomeNaviScreenState extends State<HomeNaviScreen> {
  int _selectedIndex = 0;
  final List<Widget> _className2 =[
      const HomeScreen(),
      const AllCategory(),
      const OrderScreen(),
      const ProfileSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _className2.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
           type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff3669C9),
            items:[
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/ic_menu_home.png', width: 26),
              label: "HOME"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/categories.png', width: 26),
              label: "CATEGORIES"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/shopping-cart.png', width: 26),
              label: "ORDER"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/Profile.png', width: 26),
              label: "LOGIN"),
            ],
            currentIndex: _selectedIndex,
            onTap: ( int index) {
              setState(() {
                _selectedIndex = index;
              });
            },)
      ),
    );
  }
}