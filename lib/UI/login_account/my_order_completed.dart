import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/widgets/custom_text.dart';

class MyOrderCompleted extends StatelessWidget {
  const MyOrderCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Container(
          height: 170,width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,blurRadius: 10
              )
            ]
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'Order No238562312',
                        fontSize: 16,
                        color: Colors.black,fontWeight: FontWeight.bold),
                    CustomText(text: '20/03/2020',color: Colors.grey),

                  ],
                ),
              ),
              const Divider(color: Colors.grey),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      CustomText(text: 'Quantity: ',
                          fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),
                      CustomText(text: '03',fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                    ],),
                    Row(children: [
                      CustomText(text: 'Total Amount: ',fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),
                      CustomText(text: '\$150',fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                    ],),
                  ],
                ),
              ),
              //button and text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff3669C9)
                        ),
                        onPressed: () {},
                       child: const CustomText( text: 'Details',color: Colors.white)
                      ),
                    ),
                    const CustomText(text: 'Completed',fontSize: 16,color: Color(0xff27AE60),fontWeight: FontWeight.bold),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}