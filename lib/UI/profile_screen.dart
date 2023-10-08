import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/widgets/my_text_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "";
  String email = "";
  String password = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getUSerDetails();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("user name"),
            Text(name),
            const Divider(),
            const Text("User Email"),
            Text(email),
            const Divider(),
            const Text("User password"),
            Text(password),
            ElevatedButton(onPressed: (){
              _updateUser();
            }, child: Text("update"))

          ],
        ),
      ),
    );
  }
  _getUSerDetails() async {
    String uid = FirebaseAuth.instance.currentUser!.uid;
        var userDetails =
        await FirebaseFirestore.instance.collection("user").doc(uid).get();
    name = userDetails["name"];
    email = userDetails["email"];
    password = userDetails["password"];
    setState(() {});
  }


  _updateUser()async{
    String uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance.collection("user").doc(uid).set({
      "name":"new name"
    },SetOptions(merge: true));
  }

}
