import 'package:flutter/cupertino.dart';
import 'package:flutter_ccomerence/UI/order/add_payment_screen.dart';
import 'package:flutter_ccomerence/UI/order/custom/custom_order_class.dart';
import 'package:flutter_ccomerence/consts/consts.dart';
import 'package:flutter_ccomerence/widgets/my_button.dart';
import '../../widgets/custom_text.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: const CustomText(
            text: "Cart",fontSize: 16, fontWeight: FontWeight.bold),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 500,width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: orderScreen.length,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: orderScreen[index].image,
                                  fit: BoxFit.fill),
                            ),
                          ),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 20,width:MediaQuery.of(context).size.width*0.65,
                                  child: Row(
                                    children: [
                                      Text(orderScreen[index].text),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () {},
                                        child: orderScreen[index].clearIcon)
                                    ],
                                  )),
                              Text(orderScreen[index].priceText),
                              SizedBox(height: MediaQuery.of(context).size.height*0.040),
                              SizedBox(
                                height: 20,width: MediaQuery.of(context).size.width*0.65,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(onTap: (){},
                                      child: orderScreen[index].addButton)
                                        .box
                                        .color(Colors.grey.shade200)
                                        .roundedSM
                                        .make(),
                                    10.widthBox,
                                    Text(orderScreen[index].textNumber),
                                    10.widthBox,
                                    GestureDetector(onTap: (){},
                                      child: orderScreen[index].subButton)
                                        .box
                                        .color(Colors.grey.shade200)
                                        .roundedSM
                                        .make(),
                                    const Spacer(),
                                    Text(orderScreen[index].rightText),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ])),),
            ),
            // Total number and text
            const Spacer(),
            const SizedBox(
              height: 30,width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'Advance Payment',
                  fontSize: 20,color: Color(0xff808080),),
                  CustomText(text: "\$ 45.00",fontSize: 20,),
                ],
              ),
            ),
            const SizedBox(
              height: 30,width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'Total:',
                    fontSize: 20,color: Color(0xff808080),),
                  CustomText(text: "\$ 95.00",fontSize: 20,),


                ],
              ),
            ),
            // check out button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: MyButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPaymentScreen(),));
                },
                text: "Check Out",
                fontSize: 20,
              ),
            )
          ],
        )
      ),
    );
  }
  List<dynamic> orderScreen =[
    CustomOrderModel(
      image: const AssetImage('assets/icons/image 5.png'),
      text: "Minimal Stand",
      //price text
      priceText: "\$ 25,00",
      // add and subtract
      addButton: const Icon(Icons.add),
      textNumber: "08",
      subButton: const Icon(CupertinoIcons.minus),
      //right side icon and text
       clearIcon:  const Icon(CupertinoIcons.clear_circled),
       rightText: "CBM 2",
    ),
    CustomOrderModel(
      image: const AssetImage('assets/icons/image 5.png'),
      text: "Minimal Stand",
      //price text
      priceText: "\$ 25,00",
      // add and subtract
      addButton: const Icon(Icons.add),
      textNumber: "04",
      subButton: const Icon(CupertinoIcons.minus),
      //right side icon and text
       clearIcon:  const Icon(CupertinoIcons.clear_circled),
    ),
    CustomOrderModel(
      image: const AssetImage('assets/icons/image 5.png'),
      text: "Minimal Stand",
      //price text
      priceText: "\$ 25,00",
      // add and subtract
      addButton: const Icon(Icons.add),
      textNumber: "06",
      subButton: const Icon(CupertinoIcons.minus),
      //right side icon and text
      clearIcon:  const Icon(CupertinoIcons.clear_circled),
    )
  ];
}