import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/home/all_category.dart';
import 'package:flutter_ccomerence/UI/home/detail_product.dart';
import 'package:flutter_ccomerence/UI/home/feature_screen.dart';
import 'package:flutter_ccomerence/UI/home/search_screen.dart';
import 'package:flutter_ccomerence/UI/login_account/my_order_pending.dart';
import 'package:flutter_ccomerence/UI/login_account/order_pending.dart';
import 'package:flutter_ccomerence/UI/order/order_screen.dart';
import 'package:flutter_ccomerence/model/home_model.dart';
import 'package:flutter_ccomerence/widgets/my_text_field.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: const Text(
              "LOGO",
              style: TextStyle(color: Color(0xff3669C9), fontSize: 24),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderPending(),));
                },
                  child: Image.asset('assets/icons/car.png',))
            ],
          ),
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
              child: Column(children: [
                  MyTextField(
                  controller: _search,
                  hintText: 'Search Product Name',
                  suffixIcon: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen(),));
                      }, child: const Icon(Icons.search))),
              10.heightBox,
              //card container
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff695C5C),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Comfortable\n Chair',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                          10.heightBox,
                          Row(
                            children: [
                              const Text('Shop now',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              12.widthBox,
                              const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 130,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                AssetImage('assets/icons/pngwing 1.png'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
              ),
              //Category
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                  text: "Categories",
                  fontSize: 16, fontWeight: FontWeight.w500),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AllCategory()));
                    },
                    child: const CustomText(
                      text:"See All",
                      color: Color(0xff3669C9),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: homeModel.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Column(
                        children: [
                          homeModel[index].container,
                          5.heightBox,
                          Text(homeModel[index].text)
                        ],
                      ),
                    )
                ),
              ),

              //Featured Product
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Featured Product",style:TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FeatureScreen(),));
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                            color: Color(0xff3669C9),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 290,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: homeContainer.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => homeContainer[index].navi));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              homeContainer[index].container,
                              homeContainer[index].column
                            ],
                          ),
                        ),
                      )
                  ),
                ),
            ]),
    ),
          )));
  }

  List<dynamic> homeModel = [
    HomeModel(
      container: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: const Color(0xffE4F3EA),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: AssetImage('assets/icons/table.png'))),
      ),
      text: 'Tables'
    ),
    HomeModel(
        container: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: const Color(0xffFFECE8),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/icons/chair 1.png'))),
        ),
        text: 'Chairs'
    ),
    HomeModel(
        container: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
          color: const Color(0xffFFF6E4),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/icons/wardrobe.png'))),
        ),
        text: 'wardrobe '
    ),
    HomeModel(
        container: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
          color: const Color(0xffF1EDFC),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/icons/bed.png'))),
        ),
        text: 'Beds'
    ),
    HomeModel(
        container: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: const Color(0xffE4F3EA),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/icons/Meat.png'))),
        ),
        text: 'Sofa'
    ),
  ];
  List<dynamic> homeContainer = [
    HomeContainer(
      container: Container(
        height: 170,
        width: 170,
        decoration: BoxDecoration(
            color: const Color(0xffE4F3EA),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: AssetImage('assets/icons/coffieChair.png'),fit: BoxFit.cover)),
      ),
      column: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          5.heightBox,
          const Text('Coffee Chair'),
          5.heightBox,
          const Text('Rp. 1.500.000',style: TextStyle(color: Color(0xff3669C9))),
          10.heightBox,
           Row(
            children: [
              RatingBar.builder(
                  initialRating: 1,
                  itemCount: 1,
                  itemSize: 20,
                  itemBuilder: (context, index) => const Icon(Icons.star,color: Colors.amber),
                  onRatingUpdate: (rates) {}),
              5.widthBox,
              const Text("4.6 86 Reviews"),
              15.widthBox,
              IconButton(
                onPressed: () {},
                  icon: const Icon(Icons.more_vert))
            ],
          )
        ],
      ),
      navi: const DetailProduct()

    ),
    HomeContainer(
      container: Container(
        height: 170,
        width: 170,
        decoration: BoxDecoration(
            color: const Color(0xffE4F3EA),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: AssetImage('assets/icons/MinimalDisk.png'))),
      ),
        column: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.heightBox,
            const Text('Minimal Desk'),
            5.heightBox,
            const Text('Rp. 1.500.000',style: TextStyle(color: Color(0xff3669C9))),
            10.heightBox,
            Row(
              children: [
                RatingBar.builder(
                    initialRating: 1,
                    itemCount: 1,
                    itemSize: 20,
                    itemBuilder: (context, index) => const Icon(Icons.star,color: Colors.amber),
                    onRatingUpdate: (rates) {}),
                5.widthBox,
                const Text("4.6 86 Reviews"),
                15.widthBox,
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert))
              ],
            )
          ],
        ),
      navi: const DetailProduct()
    )

  ];
}