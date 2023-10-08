import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/login_account/profile_setting.dart';
import 'package:flutter_ccomerence/widgets/custom_text.dart';
import 'package:flutter_ccomerence/widgets/my_button.dart';
import 'package:flutter_ccomerence/widgets/my_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileSaveChanges extends StatefulWidget {
  const ProfileSaveChanges({super.key});

  @override
  State<ProfileSaveChanges> createState() => _ProfileSaveChangesState();
}

class _ProfileSaveChangesState extends State<ProfileSaveChanges> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0, centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const CustomText(text: "Profile", fontSize: 16),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // container image
                30.heightBox,
                Center(
                  child: Stack(
                    children: [
                      Container(
                        height: 125,
                        width: 125,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/Ellipse 30.png'))),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 20,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: Color(0xff3669C9),
                              shape: BoxShape.circle,
                            ),
                            child: const Image(
                                image: AssetImage('assets/icons/edit.png')),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                30.heightBox,
                //text field
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name
                    const Text('Full Name', style: TextStyle(fontSize: 14)),
                    10.heightBox,
                    MyTextField(
                      controller: _name,
                      hintText: "Gordon khan",
                    ),
                    10.heightBox,
                    // Email
                    const Text('Email', style: TextStyle(fontSize: 14)),
                    10.heightBox,
                    MyTextField(
                      controller: _email,
                      hintText: "Gordon@dummy.com",
                    ),
                    25.heightBox,
                  ],
                ),
                // button
                const Spacer(),
                MyButton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileSetting(),));
                  },
                  text: 'Save Changes',
                )
              ],
            ),
          ),
        ));
  }
}