import 'package:auto_route/auto_route.dart';
import 'package:coffee/extension/context_extension.dart';
import 'package:coffee/extension/num_extention.dart';
import 'package:coffee/resource/colors.dart';
import 'package:coffee/resource/png_images.dart';
import 'package:coffee/resource/style/k_text_style.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Details",
          style: KTextStyle.kTwenty
              .copyWith(fontWeight: FontWeight.w700, color: Colors.black),
        ),
        leading: Icon(Icons.arrow_back_ios),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: Icon(Icons.favorite),
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 236, 233, 224),
                  image: DecorationImage(
                      image: AssetImage(
                    PngImages.cup3,
                  )),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CappuCino",
                      style: KTextStyle.kSixteen,
                    ),
                    const Text(
                      "with cocolate",
                      style: KTextStyle.kTwelve,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          color: MyColor.orange,
                        ),
                        Text("\u{20B9} " + "250",
                            style: KTextStyle.kSixteen
                                .copyWith(fontWeight: FontWeight.w600)),
                        const Spacer(),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              // color: MyColor.orange,
                              borderRadius: BorderRadius.circular(6)),
                          child: Image.asset("assets/images/png/bean.png"),
                        ),
                        10.widthBox,
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              // color: MyColor.orange,
                              borderRadius: BorderRadius.circular(6)),
                          child: Image.asset("assets/images/png/milk.png"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black45,
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const Text(
                  "Discription",
                  style: KTextStyle.kSixteen,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text.rich(TextSpan(
                    text:
                        "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More")),
              ),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Size", style: KTextStyle.kTwenty),
              ),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColor.orange),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text("S"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColor.orange),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text("M"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColor.orange),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text("L"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              10.heightBox,
              Divider(
                indent: 5,
                endIndent: 5,
              ),
              20.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Price", style: KTextStyle.kTwenty),
                        Text("\u{20B9} 245",
                            style: KTextStyle.kSixteen.copyWith(
                                color: MyColor.orange,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            color: MyColor.orange,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: KTextStyle.kSixteen
                                .copyWith(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
