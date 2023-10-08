import 'package:flutter_ccomerence/UI/login_account/add_floating_screen.dart';
import 'package:flutter_ccomerence/UI/login_account/custom/custom_order_class.dart';
import 'package:flutter_ccomerence/consts/consts.dart';
import '../../widgets/custom_text.dart';

class CustomProductScreen extends StatefulWidget {
  const CustomProductScreen({super.key});

  @override
  State<CustomProductScreen> createState() => _CustomProductScreenState();
}

class _CustomProductScreenState extends State<CustomProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: AppBar(
            elevation: 0,centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const CustomText(text: "Custom Product",fontSize: 16),
          ),
        body: Column(
        children: [
          SizedBox(
            height: 740,width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: customProduct.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //image
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: customProduct[index].image, fit: BoxFit.fill),
                      ),
                    ),
                    10.widthBox,

                    //textName
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.heightBox,
                        CustomText(text: customProduct[index].text,
                                color: const Color(0xff3669C9),fontSize: 14,
                            fontWeight: FontWeight.w400),

                        //text
                        10.heightBox,
                         CustomText(text: customProduct[index].texts,fontSize: 10),

                        // add and subtract
                        10.heightBox,
                        CustomText(text: customProduct[index].dateText),
                      ],
                    ),
                    //right side icon and text
                    const Spacer(),
                    10.heightBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 10,width: 10,
                            decoration: BoxDecoration(
                                color: customProduct[index].dotColor,
                                shape: BoxShape.circle
                            ),
                          ),

                          5.widthBox,
                          CustomText(text: customProduct[index].loadText),
                        ],
                      ),
                    )
                  ],
                ),
              ),),
          )
        ],
      ),
         floatingActionButton: FloatingActionButton(
            foregroundColor: const Color(0xff3669C9),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddFloatingScreen(),));
            },
            child: const Icon(Icons.add,color: Color(0xffFFFFFF)),
          ),
    ));
  }

  List<dynamic> customProduct =[
    const CustomProductModel(
      image: AssetImage('assets/icons/image 5.png'),
      text: "Minimal Stand",
      texts: "Introducing our exquisitely crafted\nfurniture collection, designed to...  ",
      dateText: "19/02/2023",
      dotColor: Color(0xffEA1B1B),
      loadText: 'Pending',
    ),
    const CustomProductModel(
      image: AssetImage('assets/icons/image 5.png'),
      text: "Minimal Stand",
      texts: "Introducing our exquisitely crafted\nfurniture collection, designed to...  ",
      dateText: "19/02/2023",
      dotColor: Color(0xffEA1B1B),
      loadText: 'Pending',
    ),
    const CustomProductModel(
      image: AssetImage('assets/icons/image 5.png'),
      text: "Minimal Stand",
      texts: "Introducing our exquisitely crafted\nfurniture collection, designed to...  ",
      dateText: "19/02/2023",
      dotColor: Color(0xff00A86B),
      loadText: 'Approved',
    ),
    const CustomProductModel(
      image: AssetImage('assets/icons/image 5.png'),
      text: "Minimal Stand",
      texts: "Introducing our exquisitely crafted\nfurniture collection, designed to...  ",
      dateText: "19/02/2023",
      dotColor: Color(0xffEA1B1B),
      loadText: 'Pending',
    ),
    const CustomProductModel(
      image: AssetImage('assets/icons/image 5.png'),
      text: "Minimal Stand",
      texts: "Introducing our exquisitely crafted\nfurniture collection, designed to...  ",
      dateText: "19/02/2023",
      dotColor: Color(0xffEA1B1B),
      loadText: 'Pending',
    ),
  ];
}