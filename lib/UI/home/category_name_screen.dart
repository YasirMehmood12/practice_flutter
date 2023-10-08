import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/home/detail_product.dart';
import 'package:flutter_ccomerence/model/feature_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/custom_text.dart';

class CategoryNameScreen extends StatefulWidget {
  const CategoryNameScreen({super.key});

  @override
  State<CategoryNameScreen> createState() => _CategoryNameScreenState();
}

class _CategoryNameScreenState extends State<CategoryNameScreen> {
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
              text: "Category Name",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 5),
              child: Column(
                children: [
                  //Featured Product
                  GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: categoryName.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 300
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => categoryName[index].navi,));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              categoryName[index].container,
                              categoryName[index].column,
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }

  List<dynamic> categoryName=[
    CategoryNameModel(
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
                    itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber),
                    onRatingUpdate: (rates) {}),
                5.widthBox,
                const Text("4.6 86 Reviews"),
                10.widthBox,
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
      navi: const DetailProduct()
    ),
    CategoryNameModel(
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
                    itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber),
                    onRatingUpdate: (rates) {}),
                5.widthBox,
                const Text("4.6 86 Reviews"),
                10.widthBox,
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert))
              ],
            )
          ],
        ),
        navi: const DetailProduct()
    ),
    CategoryNameModel(
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
                    itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber),
                    onRatingUpdate: (rates) {}),
                5.widthBox,
                const Text("4.6 86 Reviews"),
                10.widthBox,
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
        navi: const DetailProduct()
    ),
    CategoryNameModel(
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
                    itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber),
                    onRatingUpdate: (rates) {}),
                5.widthBox,
                const Text("4.6 86 Reviews"),
                10.widthBox,
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
        navi: const DetailProduct()
    ),
    CategoryNameModel(
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
                    itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber),
                    onRatingUpdate: (rates) {}),
                5.widthBox,
                const Text("4.6 86 Reviews"),
                10.widthBox,
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
        navi: const DetailProduct()
    ),
    CategoryNameModel(
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
                    itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber),
                    onRatingUpdate: (rates) {}),
                5.widthBox,
                const Text("4.6 86 Reviews"),
                10.widthBox,
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
        navi: const DetailProduct()
    ),
  ];
}
