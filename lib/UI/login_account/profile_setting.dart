import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/login_account/add_shipping_address_screen.dart';
import 'package:flutter_ccomerence/UI/login_account/custom_product_screen.dart';
import 'package:flutter_ccomerence/UI/login_account/order_pending.dart';
import 'package:flutter_ccomerence/UI/login_account/profile_screen.dart';
import 'package:flutter_ccomerence/UI/login_screen.dart';
import 'package:flutter_ccomerence/model/profile_model.dart';
import 'package:flutter_ccomerence/widgets/custom_text.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  String name ="";
  String email ="";

  @override
  void initState() {
    super.initState();
    _getUSerDetails();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const CustomText(
            text: "Profile",
            fontSize: 16,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  _logOut();
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  //image
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/Ellipse 30.png'),
                            fit: BoxFit.cover)),
                  ),
                  20.widthBox,
                  //Texts
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: name, fontSize: 20),
                      CustomText(text: email, fontSize: 20),
                    ],
                  ),
                ],
              ),
              20.heightBox,
              ListView.builder(
                shrinkWrap: true,
                itemCount: profileModel.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => profileModel[index].navi));
                    },
                    child: Column(
                    children: [
                      profileModel[index].conText
                    ],
              ),
                  ),
                ),)
            ],
          ),
        ),
      ),
    );
  }
List<dynamic> profileModel =[
  ProfileModel(
    conText: Container(
      height: 70,width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.shade200,
              blurRadius: 5,offset: const Offset(0, 3))
        ]
      ),
      child: const Center(
        child: ListTile(
          leading: CustomText(text: 'Profile',
            fontSize: 18,fontWeight: FontWeight.w600,
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black),
        ),
      ),
    ),
    navi: const ProfileScreen()
  ),
  ProfileModel(
    conText: Container(
      height: 70,width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.shade200,
                blurRadius: 5,offset: const Offset(0, 3))
          ]
      ),
      child: const Center(
        child: ListTile(
          leading: CustomText(text: 'Custom Product',
            fontSize: 18,fontWeight: FontWeight.w600,
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black),
        ),
      ),
    ),
      navi: const CustomProductScreen()
  ),
  ProfileModel(
    conText: Container(
      height: 70,width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.shade200,
                blurRadius: 5,offset: const Offset(0, 3))
          ]
      ),
      child: const Center(
        child: ListTile(
            leading: CustomText(text: 'Support',
            fontSize: 18,fontWeight: FontWeight.w600,
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black),
        ),
      ),
    ),
  ),
  ProfileModel(
    conText: Container(
      height: 70,width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.shade200,
                blurRadius: 5,offset: const Offset(0, 3))
          ]
      ),
      child: const Center(
        child: ListTile(
          leading: CustomText(text: 'Order Tracking',
            fontSize: 18,fontWeight: FontWeight.w600,
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black),
        ),
      ),
    ),
      navi: const OrderPending()
  ),
  ProfileModel(
    conText: Container(
      height: 70,width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.shade200,
                blurRadius: 5,offset: const Offset(0, 3))
          ]
      ),
      child: const Center(
        child: ListTile(
          leading: CustomText(text: 'Add shipping address',
            fontSize: 18,fontWeight: FontWeight.w600,
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black),
        ),
      ),
    ),
      navi: const AddShippingAddressScreen()
  ),
];

  _getUSerDetails() async {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    var userDetails =
    await FirebaseFirestore.instance.collection("user").doc(uid).get();
    name = userDetails["name"];
    email = userDetails["email"];
    setState(() {});
  }
  _logOut()async {
    try{
      await FirebaseAuth.instance.signOut().then((value) {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const LoginScreen()));
        Fluttertoast.showToast(msg: "Log Out");
      });
    }on FirebaseException catch(e){
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
