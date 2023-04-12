import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/helpers/routes/custom_routes.dart';
import 'package:gireeb/screens/nav%20bar/nav_bar_screen.dart';

import '../../widgets/self_pickup_product_card.dart';
import '../product/product_screen.dart';

class SelfPickupScreen extends StatelessWidget {
  const SelfPickupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kdefaultPadding,
                vertical: kdefaultPadding,
              ).copyWith(bottom: 0),
              child: Column(
                crossAxisAlignment: crossStart,
                children: [
                  Row(
                    crossAxisAlignment: crossCenter,
                    mainAxisAlignment: mainSpaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, SlideRightRoute(page: const NavBar()));
                        },
                        child: const Icon(Icons.arrow_back),
                      ),
                      Row(
                        crossAxisAlignment: crossEnd,
                        children: [
                          Image.asset(
                            "assets/images/self_pickup.png",
                            height: 45.h,
                          ),
                          gapWidth(size: 5),
                          Text(
                            "Self Pickup ",
                            style: kHeadingTextStyle,
                          )
                        ],
                      ),
                      Container()
                    ],
                  ),

                  gapHeight(size: 20),

                  //.......................... Search section .........................

                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.r,
                    ),
                    decoration: BoxDecoration(
                      color: kBgColor,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: searchController,
                        scrollPadding: EdgeInsets.zero,
                        decoration: const InputDecoration(
                          hintText: "Find food here",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),

                  gapHeight(size: 20),

                  Text(
                    "Hey, Good Morning",
                    style: kHeadingTextStyle,
                  ),
                  gapHeight(size: 20),
                  Text(
                    "Self Pickup Restaurants",
                    style: kHeadingTextStyle,
                  ),
                  gapHeight(size: 15),
                ],
              ),
            ),
            Expanded(
              child: Container(
                //height: 400,
                padding: EdgeInsets.symmetric(
                  horizontal: kdefaultPadding,
                  vertical: kdefaultPadding,
                ).copyWith(bottom: 0),
                decoration: const BoxDecoration(
                  color: kBgColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SelfPickupProductCard(
                        ontap: () {
                          Navigator.push(context,
                              SlideLeftRoute(page: const ProductScreen()));
                        },
                      ),
                      gapHeight(size: 10),
                      SelfPickupProductCard(
                        ontap: () {
                          Navigator.push(context,
                              SlideLeftRoute(page: const ProductScreen()));
                        },
                      ),
                      gapHeight(size: 10),
                      SelfPickupProductCard(
                        ontap: () {
                          Navigator.push(context,
                              SlideLeftRoute(page: const ProductScreen()));
                        },
                      ),
                      gapHeight(size: 10),
                      SelfPickupProductCard(
                        ontap: () {
                          Navigator.push(context,
                              SlideLeftRoute(page: const ProductScreen()));
                        },
                      ),
                      gapHeight(size: 10),
                      SelfPickupProductCard(
                        ontap: () {
                          Navigator.push(
                              context, SlideLeftRoute(page: ProductScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
