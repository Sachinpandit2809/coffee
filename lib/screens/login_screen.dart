import "package:auto_route/auto_route.dart";
import "package:coffee/extension/num_extention.dart";
import "package:coffee/resource/colors.dart";
import "package:coffee/resource/png_images.dart";
import "package:coffee/resource/style/k_text_style.dart";
import "package:coffee/routes/routes_name.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            child: const Image(
              image: AssetImage(PngImages.coffee),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: MyColor.black,
                child: Column(
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      "Coffee so good,\n your taste buds \nwill love it.",
                      style: KTextStyle.kThirtyTwo,
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      "The best grain, the finest roast, the\n powerful flavor..",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        context.router.pushNamed(RoutesName.dashboard);
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              // width: 40,
                              // height: 40,
                              image: AssetImage('assets/images/png/google.png'),
                            ),
                            10.widthBox,
                            const Text(
                              "Continue with Google",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
