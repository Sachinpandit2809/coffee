// ignore_for_file: unused_import, unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_route/auto_route.dart';
import 'package:coffee/extension/context_extension.dart';
import 'package:coffee/extension/num_extention.dart';
import 'package:coffee/resource/colors.dart';
import 'package:coffee/resource/png_images.dart';
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
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () {
                context.router.back();
              },
              child: const Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text("Order",
              style:
                  KTextStyle.KEighteen.copyWith(fontWeight: FontWeight.w500)),
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
              tabs: const [
                Center(child: Text("Deliver")),
                Center(child: Text("Pick Up"))
              ]),
          toolbarHeight: context.contextHeight * 0.08,
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            // first tab var Vieew,
            SingleChildScrollView(
              child: Column(
                children: [
                  20.heightBox,
                  Container(
                    height: 130,
                    width: 321,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Delivery Address",
                          style: KTextStyle.kTwentyTwo,
                        ),
                        const Text(
                          "Jl. Kpg Sutoyo",
                          style: KTextStyle.kTwenty,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                            style: KTextStyle.kTwelve,
                          ),
                        ),
                        10.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 25,
                              width: 140,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black38, width: 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                  border: Border.all(
                                      color: Colors.black38, width: 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                        ),
                      ],
                    ),
                  ),
                  10.heightBox,

                  const Divider(
                    endIndent: 20,
                    indent: 20,
                  ),
                  // 10.heightBox,
                  //implimentation of counter coffee Widget

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(22),
                        height: 54,
                        width: 54,
                        child: Image(
                            image: AssetImage("assets/images/png/cup2.png")),
                      ),
                      Column(
                        children: [
                          Text(
                            "Cappucino",
                            style: KTextStyle.KEighteen,
                          ),
                          Text(
                            "With Cappucino",
                            style: KTextStyle.kTwelve,
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  // color: MyColor.orange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                ),
                                margin: EdgeInsets.all(5),
                                child: Icon(Icons.remove)),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "1",
                              style: KTextStyle.kTwenty,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  // color: MyColor.orange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                ),
                                margin: EdgeInsets.all(5),
                                child: Icon(Icons.add)),
                          ),
                          20.widthBox
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    height: 4,
                    color: Color.fromARGB(66, 2, 1, 1),
                    thickness: 2.5,
                  ),

                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      height: 80,
                      width: 315,
                      child: Row(
                        children: [
                          Image.asset("assets/images/png/textfield.png"),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text("Discount is Applied",
                                style: KTextStyle.KEighteen),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      )),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            "Payment Summery ",
                            style: KTextStyle.kTwentyTwo
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TwoParaRow(title: "price", price: "\u{20B9} 250"),
                  TwoParaRow(title: "Delivery fee", price: "\u{20B9} 50"),
                  Divider(),
                  TwoParaRow(title: "Total fee", price: "\u{20B9} 300"),
                  Divider(),
                  Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: MyColor.orange,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Order",
                          style:
                              KTextStyle.kTwenty.copyWith(color: Colors.white),
                        ),
                      ))

                  //next tab 1
                ],
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////////
            ///second Tab bar view
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/png/maps.png"),
                  20.heightBox,
                  const Text(
                    "10 Min Left",
                    style: KTextStyle.kSixteen,
                  ),
                  const Text(
                    "Delivery to Jl. Kpg Sutoyo",
                    style: KTextStyle.kTwelve,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(22),
                        height: 54,
                        width: 54,
                        child: const Image(
                            image: AssetImage("assets/images/png/bike.png")),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivering your order",
                            style: KTextStyle.KEighteen,
                          ),
                          Text.rich(
                            TextSpan(
                              text:
                                  "We deliver your goods to\n you in the shortest possible time.",
                            ),
                            maxLines: 3,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(22),
                        height: 54,
                        width: 54,
                        child: Image(
                            image: AssetImage("assets/images/png/boy.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "David watson",
                            style: KTextStyle.kFourteen,
                          ),
                          Text(
                            "Personal Courier",
                            style: KTextStyle.kTwelve,
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              margin: EdgeInsets.all(5),
                              child: Icon(Icons.call),
                            ),
                          ),
                          20.widthBox
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
            //next tab 2
          ],
        ),
      ),
    );
  }
}

class TwoParaRow extends StatelessWidget {
  final String title, price;
  const TwoParaRow({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: KTextStyle.KEighteen.copyWith(fontWeight: FontWeight.normal),
          ),
          Text(
            price,
            style: KTextStyle.KEighteen.copyWith(fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
