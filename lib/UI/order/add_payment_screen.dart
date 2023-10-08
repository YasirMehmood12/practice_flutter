import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/widgets/my_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/custom_text.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const CustomText(
            text: "Enter Payment detail",fontSize: 16, fontWeight: FontWeight.bold),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //total number and text
                const SizedBox(
                  height: 30,width:double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'Total:',
                        fontSize: 20,color: Color(0xff808080),),
                      CustomText(text: "\$ 95.00",fontSize: 20,),


                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,width:double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'Advance Payment',
                        fontSize: 20,color: Color(0xff808080),),
                      CustomText(text: "\$ 45.00",fontSize: 20,),


                    ],
                  ),
                ),
                40.heightBox,

                //total cbm of container
                const CustomText(text: 'Total CBM of container',
                  color: Color(0xff3669C9),fontSize: 24,),
                40.heightBox,

                //empty container
                 Container(
                  height: 200,width: double.infinity,
                  color: Colors.grey.shade100,
                ),
                60.heightBox,

                // colors container
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            height: 20,width: 20,
                            decoration: BoxDecoration(
                                color: const Color(0xffF71313),
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          const CustomText(text: 'Taken space',)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            height: 20,width: 20,
                            decoration: BoxDecoration(
                                color: const Color(0xff3669C9),
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          const CustomText(text: 'Your Space',)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            height: 20,width: 20,
                            decoration: BoxDecoration(
                                color: const Color(0xffE9E9E9),
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          const CustomText(text: 'Empty Space',)
                        ],
                      ),
                    ),
                  ],
                ),

                // Button
                const Spacer(),
                MyButton(
                  onTap: () {},
                  text: 'Confirm 50% advance payment',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
