import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/home/category_name_screen.dart';
import 'package:flutter_ccomerence/UI/home/search_screen.dart';
import 'package:flutter_ccomerence/model/all_category_model.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/custom_text.dart';

class AllCategory extends StatefulWidget {
  const AllCategory({super.key});

  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
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
          text: "All Categories",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [

          20.heightBox,
          GridView.builder(
                itemCount: allCategoryModel.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisExtent: 130),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => allCategoryModel[index].navi,));
                    },
                    child: Column(
                      children: [
                        allCategoryModel[index].container,
                        3.widthBox,
                        Text(allCategoryModel[index].text),

                      ],
                    ),
                  );
                },
              ),
        ],
      ),
    ));
  }

  List<dynamic> allCategoryModel = [
    AllCategoryModel(
      container: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: const Color(0xffE4F3EA),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/icons/bathroom 1.png'),
              )),
                  ),
        text: 'Bathroom\nFurniture',
      navi: const CategoryNameScreen()
    ),

    AllCategoryModel(
        container: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: const Color(0xffFFECE8),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/icons/cot 1.png'))),
        ),
        text: "Kids' Beds",
      navi: const CategoryNameScreen()
    ),
    AllCategoryModel(
        container: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: const Color(0xffFFF6E4),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/icons/kitchen 1.png'))),
        ),
        text: 'Kitchen\nFurniture ',
  navi: const CategoryNameScreen()
    ),
    AllCategoryModel(
        container: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: const Color(0xffF1EDFC),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/icons/circle-table 1.png'))),
        ),
        text: 'Coffee\nTables',
        navi: const CategoryNameScreen()),
    AllCategoryModel(
        container: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: const Color(0xffFFD2D2),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/icons/books 1.png'))),
        ),
        text: 'TV Stands',
        navi: const CategoryNameScreen()),
    AllCategoryModel(
        container: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: const Color(0xffD7EDFF),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/icons/Meat.png'))),
        ),
        text: 'Sofas',
        navi: const CategoryNameScreen()),
  ];
}