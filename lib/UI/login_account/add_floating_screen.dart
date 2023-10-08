import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/widgets/custom_text.dart';
import 'package:flutter_ccomerence/widgets/my_button.dart';
import 'package:flutter_ccomerence/widgets/my_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

class AddFloatingScreen extends StatefulWidget {
  const AddFloatingScreen({super.key});

  @override
  State<AddFloatingScreen> createState() => _AddFloatingScreenState();
}

class _AddFloatingScreenState extends State<AddFloatingScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _price = TextEditingController();
  final TextEditingController _description = TextEditingController();
  bool isImage = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: const Color(0xffE8E8E8),
          body: SingleChildScrollView(
          child: Column(
            children: [
              isImage == false
                  ? Container(
                  height: 295,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xffE8E8E8),
                      image: DecorationImage(image: AssetImage('assets/images/Big sofa.png'),fit: BoxFit.fill)
                  ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xff3669C9),
                            radius: 30,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
                  : Container(
                height: 295,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xffE8E8E8)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xff3669C9),
                            radius: 30,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isImage =!isImage;
                        });
                      },
                      child: const Column(
                        children: [
                          Icon(Icons.file_upload_outlined,
                              color: Colors.black, size: 30),
                          CustomText(
                              text: "Add Image",
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ),
                    150.heightBox
                  ],
                ),
              ),
            ],
          ),
      ),
          bottomNavigationBar: Container(
              height: 500,
              width: double.infinity,
              color: Colors.transparent,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end, children: [
                //container text field
                Container(
                  height: 500,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        10.heightBox,
                        MyTextField(controller: _name, hintText: "Name"),
                        10.heightBox,
                        MyTextField(controller: _price, hintText: "Price"),
                        10.heightBox,
                        MyTextField(
                          controller: _description,
                          hintText: "Description",
                          maxLines: 11,
                        ),
                        //button
                        15.heightBox,
                        MyButton(
                          onTap: () {},
                          text: 'Submit',
                        )
                      ],
                    ),
                  ),
                ),
              ])),
    )
    );
  }
}
