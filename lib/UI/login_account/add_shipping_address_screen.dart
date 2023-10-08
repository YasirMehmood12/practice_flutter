import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/widgets/my_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/custom_text.dart';
import '../../widgets/my_text_field.dart';

class AddShippingAddressScreen extends StatefulWidget {
  const AddShippingAddressScreen({super.key});

  @override
  State<AddShippingAddressScreen> createState() => _AddShippingAddressScreenState();
}

class _AddShippingAddressScreenState extends State<AddShippingAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      elevation: 0, centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      title: const CustomText(text: "Add Shipping Address", fontSize: 16),
    ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Full Name
              const Text('Full Name', style: TextStyle(fontSize: 14)),
              10.heightBox,
              const MyTextField(
                hintText: "Gordon khan",
              ),
              25.heightBox,

              // Address
              const Text('Address', style: TextStyle(fontSize: 14)),
              10.heightBox,
              const MyTextField(
                hintText: "Ex: 25 Robert Latouche Street",
              ),
              25.heightBox,

              // Zipcode (Postal Code)
              const Text('Zipcode (Postal Code)', style: TextStyle(fontSize: 14)),
              10.heightBox,
              const MyTextField(
                hintText: "Ex: 25 Robert Latouche Street",
              ),
              25.heightBox,

              // Country
              const Text('Country', style: TextStyle(fontSize: 14)),
              10.heightBox,
              MyTextField(
                suffixIcon: IconButton(onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_down_outlined)),
                hintText: "Pakistan",
              ),
              25.heightBox,

              // Company Name
              const Text('Company Name', style: TextStyle(fontSize: 14)),
              10.heightBox,
              const MyTextField(
                hintText: "Solo dev",
              ),
              25.heightBox,

              // Phone Number
              const Text('Phone Number', style: TextStyle(fontSize: 14)),
              10.heightBox,
              const MyTextField(
                hintText: "+1 090785601",
              ),

              // Button
              const Spacer(),
              MyButton(
                text: 'Save address',
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      )
    );
  }
}
