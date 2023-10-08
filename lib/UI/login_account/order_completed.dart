import 'package:flutter/material.dart';
import 'package:flutter_ccomerence/UI/login_account/my_order_completed.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/custom_text.dart';

class OrderCompleted extends StatelessWidget {
  const OrderCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const MyOrderCompleted(),
      const Text('')
    ];

    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                centerTitle: true,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                title: const CustomText(text: "My Order", fontSize: 16),
                bottom:  const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    indicatorWeight: 4,
                    tabs: [
                      Tab(text: 'Completed'),
                      Tab(text: 'Canceled')
                    ]),
              ),
              body: TabBarView(children: _kTabPages)
          )),
    );
  }
}
