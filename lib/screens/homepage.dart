// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:coffee/extension/num_extention.dart';
import 'package:coffee/resource/colors.dart';
import 'package:coffee/resource/png_images.dart';
import 'package:coffee/resource/style/k_text_style.dart';
import 'package:coffee/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                380.heightBox,
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return foodBox();
                      }),
                )
              ],
            ),
          ),
          Container(
              height: 270,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                    Color.fromARGB(255, 31, 31, 31),
                    Color.fromARGB(255, 13, 13, 13),
                  ])),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              "koderma ,Jharkhand",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        Image.asset("assets/images/png/profile.png")
                      ],
                    ),
                    20.heightBox,
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIconColor: Colors.white.withOpacity(0.7),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          fillColor: Colors.amber,
                          suffixIcon: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Image.asset(
                                  "assets/images/png/textfield.png")),
                          hintStyle:
                              TextStyle(color: Color.fromARGB(255, 98, 98, 98)),
                          hintText: "Search Coffee",
                          prefixIcon: Icon(Icons.search)),
                    )
                  ],
                ),
              )),
          Positioned(
              top: 210,
              left: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 140,
                width: 315,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Buy one get",
                      style: KTextStyle.kThirtyTwo.copyWith(
                          fontWeight: FontWeight.w700,
                          // backgroundColor: MyColor.black,
                          color: Colors.white),
                    ),
                    Text("One Free", style: KTextStyle.kThirtyTwo.copyWith())
                  ],
                ),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(PngImages.cupBackground)),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              )),
        ],
      ),
    );
  }
}

class foodBox extends StatelessWidget {
  const foodBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //pic 1
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/png/cup1.png"),
            Text(
              "CappuCino",
              style: KTextStyle.kSixteen,
            ),
            Text(
              "with chocolate ",
              style: KTextStyle.kTwelve,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("\u{20B9} " + "250"),
                70.widthBox,
                InkWell(
                  onTap: () {
                    context.router.pushNamed(RoutesName.favourite);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: MyColor.orange,
                        borderRadius: BorderRadius.circular(6)),
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
            30.heightBox
          ],
        ),
        //pic 2
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // margin: EdgeInsets.only(top: 400),
              // height: 100,
              child: Image.asset("assets/images/png/cup2.png"),
            ),
            Text(
              "CappuCino",
              style: KTextStyle.kSixteen,
            ),
            Text(
              "with cocolate",
              style: KTextStyle.kTwelve,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\u{20B9} " + "250"),
                70.widthBox,
                InkWell(
                  onTap: () {
                    context.router.pushNamed(RoutesName.favourite);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: MyColor.orange,
                        borderRadius: BorderRadius.circular(6)),
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
            30.heightBox
          ],
        ),
      ],
    );
  }
}
