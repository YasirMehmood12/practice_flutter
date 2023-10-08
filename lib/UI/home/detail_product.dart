import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/my_button.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              centerTitle: true,
              title: const CustomText(
                text: "Detail Product",
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                10.heightBox,
                Container(
                  height: 350,
                    width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image:AssetImage('assets/icons/image 5.png'),fit: BoxFit.fill)
                  ),
                    ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //text
                      10.heightBox,
                      const CustomText(text: 'Minimal Stand',
                        color: Color(0xff3669C9),fontSize: 25,fontWeight: FontWeight.w500,),
                      // row text
                      10.heightBox,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "\$ 25,00",fontSize: 16),
                          CustomText(text: "CBM 13",fontSize: 16),
                        ],
                      ),
                      // column text
                      10.heightBox,
                      const CustomText(text: 'Product Description',fontSize: 16,fontWeight: FontWeight.w600),
                      20.heightBox,
                      const SizedBox(
                        height: 150,width: double.infinity,
                        child: CustomText(text: 'Introducing our exquisitely crafted furniture\n collection, designed to transform your living\n spaces into havens of style, comfort, and\n functionality. Each piece in our collection is\n meticulously created with a blend of\n contemporary aesthetics, exceptional\n craftsmanship, and premium...'
                            ,fontSize: 15)
                      ),
                      //row alert text and icon
                      Row(
                        children: [
                          const Icon(Icons.info_outline_rounded),
                          5.widthBox,
                          const CustomText(text: 'You can order minimum '),
                          const CustomText(text: '4 items',fontWeight: FontWeight.bold),

                        ],
                      ),

                      10.heightBox,
                      MyButton(
                        onTap: () {},
                        text: "Add to Cart",
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
