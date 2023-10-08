import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/widgets/my_button.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/my_text_field.dart';
import 'home/home_navi_screen.dart';

class VerificationScreeen extends StatefulWidget {
  const VerificationScreeen({super.key});

  @override
  State<VerificationScreeen> createState() => _VerificationScreeenState();
}

class _VerificationScreeenState extends State<VerificationScreeen> {
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ///text
              40.heightBox,
              const Text('Verification',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

              ///text button
              20.heightBox,
              const Text("We send you a confirmation on",style: TextStyle(fontSize: 14)),
              Row(
                children: [
                  const Text("Gor*******@gmail.com",style: TextStyle(fontSize: 14)),
                  5.widthBox,
                  GestureDetector(
                    onTap: (){},
                    child: const Text("Wrong email?",style: TextStyle(
                        fontSize: 14,color: Color(0xff3669C9))
                    ),
                  ),
                ],
              ),
              56.heightBox,
              ///container image
              Container(
                height: 80,width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/icons/mail-checkmark-icon 1.png'),fit: BoxFit.contain)
                ),
              ),
              56.heightBox,
              /// retry for new confirmation
              MyTextField(
                controller: _email,

                    hintText: 'Retry for new confirmation',
                    suffixIcon: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('03:05'),
                      ],
                    ),
              ),

              /// button
              60.heightBox,
              MyButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeNaviScreen(),));
                },
                text: "Continue",
              )
            ],
          ),
        ),
      ),
    );
  }
}
