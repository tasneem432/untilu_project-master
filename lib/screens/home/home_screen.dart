import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/helpers/routes/custom_routes.dart';
import 'package:gireeb/screens/self%20pickup/self_pickup_screen.dart';

import '../../helpers/constants/constants.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/comming_soon_card.dart';
import '../../widgets/delicery_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: kLightBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kdefaultPadding,
                vertical: kdefaultPadding,
              ).copyWith(bottom: 0),
              child: Column(
                mainAxisAlignment: mainStart,
                crossAxisAlignment: crossStart,
                children: [
                  Row(
                    mainAxisAlignment: mainCenter,
                    children: [
                      Image.asset(
                        "assets/icons/home_screen_icon.png",
                        height: 25.h,
                      ),
                      gapWidth(size: 5),
                      Text(
                        "Home",
                        style: kHeadingTextStyle,
                      ),
                      Icon(
                        Icons.expand_more,
                        size: 35.sp,
                      )
                    ],
                  ),
                  gapHeight(size: 5),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "DHANMONDI, DHAKA",
                      style: kTitleTextstyle.copyWith(
                          color: kSecounderyColor, fontSize: 14.sp),
                    ),
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

                  gapHeight(size: 12),

                  //.......................... Categori section .........................

                  Text(
                    "Hey, Good Morning",
                    style: kHeadingTextStyle,
                  ),
                  gapHeight(size: 15),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kdefaultPadding,
                        //vertical: kdefaultPadding,
                      ).copyWith(bottom: 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: mainSpaceBetween,
                            children: [
                              CardWidget(
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      SlideLeftRoute(
                                          page: const SelfPickupScreen()));
                                },
                                image: "assets/images/self_pickup.png",
                                text: "Self Pickup",
                              ),
                              CardWidget(
                                ontap: () {},
                                image: "assets/images/royalx.png",
                                text: "Yellow Mart",
                              ),
                              CardWidget(
                                ontap: () {},
                                image: "assets/images/friend_image.png",
                                text: "Pets",
                              ),
                              CardWidget(
                                ontap: () {},
                                image: "assets/images/pets.png",
                                text: "Pets",
                              ),
                            ],
                          ),
                          gapHeight(size: 10),
                          Row(
                            mainAxisAlignment: mainSpaceBetween,
                            children: const [
                              CommingSoonCard(
                                image: "assets/images/reservations.png",
                                text: "Reservations",
                              ),
                              CommingSoonCard(
                                image: "assets/images/groceries.png",
                                text: "Groceries",
                              ),
                              CommingSoonCard(
                                image: "assets/images/Coffee.png",
                                text: "Coffee",
                              ),
                            ],
                          ),
                          gapHeight(size: 15),
                          //.......................... Delicvery section .........................
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Delivery Restaurents",
                              style:
                                  kHeadingTextStyle.copyWith(fontSize: 20.sp),
                            ),
                          ),
                          gapHeight(size: 10),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.9,
                      padding: EdgeInsets.symmetric(
                        horizontal: kdefaultPadding,
                        vertical: kdefaultPadding,
                      ),
                      decoration: const BoxDecoration(
                        color: kBgColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      // child: Column(
                      //   children: [
                      //     const DeliveryCard(),
                      //     gapHeight(size: 10),
                      //     const DeliveryCard(),
                      //     gapHeight(size: 10),
                      //     const DeliveryCard(),
                      //   ],
                      // ),
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) =>
                              const DeliveryCard()),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
