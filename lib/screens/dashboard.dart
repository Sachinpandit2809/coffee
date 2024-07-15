import 'package:auto_route/auto_route.dart';
import 'package:coffee/resource/colors.dart';
import 'package:coffee/screens/favourite_screen.dart';
import 'package:coffee/screens/homepage.dart';
import 'package:coffee/screens/notificaton_screen.dart';
import 'package:coffee/screens/order_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  // dynamic TStyle = ;
  static const List selectedItemList = [
    // index 1 implementaion of home page
    Homepage(),
    // index 2 implementaion of Favourite page
    FavouriteScreen(),
    // index 3 implementaion of Order page
    OrderScreen(),
    // index 4 implementaion of home page
    NotificatonScreen(),
  ];
  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("data"),
      // ),
      body: selectedItemList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          // elevation: 0,

          currentIndex: selectedIndex,
          fixedColor: MyColor.orange,
          unselectedItemColor: Colors.black.withOpacity(0.4),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: "favourite"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "save"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "notification")
          ],
          onTap: onItemTap),
    );
  }
}
