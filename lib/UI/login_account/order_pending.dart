import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/login_account/my_order_pending.dart';
import 'package:flutter_ccomerence/UI/login_account/order_completed.dart';
import '../../widgets/custom_text.dart';

class OrderPending extends StatelessWidget {
  const OrderPending({super.key});

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const MyOrderPending(),
      const OrderCompleted(),
      const Scaffold(),
    ];
    
    return DefaultTabController(
      length: 3,
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                centerTitle: true,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                title: const CustomText(text: "My Order", fontSize: 16),
                bottom: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    indicatorWeight: 4,
                    tabs: [
                      const Tab(text: 'Pending'),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderCompleted(),));
                        },
                          child: const Tab(text: 'Remaining Payment')),
                      const Tab(text: 'On the way'),
                    ]),
              ),
             body: TabBarView(children: _kTabPages)
          )),
    );
  }
}
