import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/custom_text.dart';
import '../../widgets/my_text_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _search = TextEditingController();
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
        text: "Search",
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.heightBox,
                MyTextField(
                    controller: _search,
                    hintText: 'Search Product Name',
                    suffixIcon: GestureDetector(
                        onTap: () {}, child: const Icon(Icons.search))),
                20.heightBox,
                const CustomText(text: 'Recently searched',
                fontSize: 14,fontWeight: FontWeight.w500,),
                const ListTile(
                  leading: Icon(Icons.search),
                  title: CustomText(text: 'Arm Rest chair'),
                ),
                const ListTile(
                  leading: Icon(Icons.search),
                  title: CustomText(text: 'Arm chair'),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}