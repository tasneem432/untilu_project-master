import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/screens/home/home_screen.dart';

import '../account/account_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                //.......................... Screen section .........................
                const HomeScreen(),
                Container(),
                const AccountScreen(),
              ],
            ),
          ),

          //     unselectedLabelColor: kTextColor,
          //     indicatorColor: kBgColor,
          //     //indicatorWeight: 5,
          //     labelStyle: kTitleTextstyle,
          //     tabs: [
          //       Tab(
          //         text: "home",
          //         icon: ImageIcon(
          //           const AssetImage("assets/icons/home_icon.png"),
          //           size: 35.sp,
          //         ),
          //       ),
          //       Tab(
          //         text: "Orders",
          //         icon: ImageIcon(
          //           const AssetImage("assets/icons/order_icon.png"),
          //           size: 35.sp,
          //         ),
          //       ),
          //       Tab(
          //         text: "Account",
          //         icon: ImageIcon(
          //           const AssetImage("assets/icons/person_icon.png"),
          //           size: 35.sp,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(5.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r)),
          color: kBgColor,
          //color: Colors.red,
          boxShadow: const [
            BoxShadow(
              color: kShadowColor,
              //color: Colors.red,
              offset: Offset(-5, -5),
              blurRadius: 2,
            )
          ],
        ),
        child: TabBar(
          controller: _tabController,
          isScrollable: false,
          labelColor: kPrimaryColor,

          unselectedLabelStyle: kTitleTextstyle,
          unselectedLabelColor: kSecounderyColor,
          indicatorColor: kBgColor,
          //indicatorWeight: 5,
          labelStyle: kTitleTextstyle,
          tabs: [
            Tab(
              text: "home",
              icon: ImageIcon(
                const AssetImage("assets/icons/g_icon.png"),
                // color: kSecounderyColor,
                size: 20.sp,
              ),
            ),
            Tab(
              text: "Orders",
              icon: ImageIcon(
                const AssetImage("assets/icons/order2_icon.png"),
                size: 20.sp,
              ),
            ),
            Tab(
              text: "Account",
              icon: ImageIcon(
                const AssetImage("assets/icons/person3_icon.png"),
                size: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
