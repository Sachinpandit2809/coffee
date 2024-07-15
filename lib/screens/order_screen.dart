import 'package:auto_route/auto_route.dart';
import 'package:coffee/extension/context_extension.dart';
import 'package:coffee/extension/num_extention.dart';
import 'package:coffee/resource/colors.dart';
import 'package:coffee/resource/style/k_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          centerTitle: true,
          title: Text("Order",
              style: KTextStyle.kTwenty.copyWith(fontWeight: FontWeight.w500)),
          bottom: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: MyColor.orange,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              controller: _tabController,
              dividerColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              tabs: [
                // Container(
                //     height: 40,
                //     width: 140,
                //     decoration: BoxDecoration(
                //         color: MyColor.orange,
                //         borderRadius: BorderRadius.circular(12)),
                //     child: Center(child: Text("Deliver"))),
                // Container(
                //     height: 40,
                //     width: 140,
                //     decoration: BoxDecoration(
                //         color: MyColor.orange,
                //         borderRadius: BorderRadius.circular(12)),
                //     child: Center(child: Text("Pick Up"))),

                Center(child: Text("Pick Up")),
                Center(child: Text("Pick Up"))
              ]),
          toolbarHeight: context.contextHeight * 0.08,
        ),
        body: TabBarView(
          children: [
            // first tab var Vieew,
            Column(
              children: [
                20.heightBox,
                Container(
                  height: 120,
                  width: 321,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Address",
                        style: KTextStyle.kTwentyTwo,
                      ),
                      Text(
                        "Jl. Kpg Sutoyo",
                        style: KTextStyle.kTwenty,
                      ),
                      Text(
                        "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                        style: KTextStyle.kTwelve,
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 25,
                            width: 140,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black38, width: 1),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.edit,
                                  size: 16,
                                ),
                                Text(
                                  "Edit Address",
                                  style: KTextStyle.kFourteen,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 110,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black38, width: 1),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.note,
                                  size: 16,
                                ),
                                Text(
                                  "add Note",
                                  style: KTextStyle.kFourteen,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            ////////////////////////////////////////////////////////////////////////////////
            ///second Tab bar view
            Center(child: Text("ddddddd1")),
          ],
        ),
      ),
    );
  }
}
