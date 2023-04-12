import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/helpers/routes/custom_routes.dart';
import 'package:gireeb/screens/account%20details/account_details_screen.dart';
import 'package:gireeb/screens/address/address_screen.dart';
import 'package:gireeb/screens/app%20language/app_language_screen.dart';
import 'package:gireeb/screens/orders/order_screen.dart';

import '../../widgets/account_card.dart';
import '../../widgets/custom_side_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kLightBgColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "My Account",
          style: kHeadingTextStyle.copyWith(fontSize: 20.sp),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            gapHeight(size: 10),

            //........................................ Account Info card......................
            Container(
              margin: EdgeInsets.symmetric(horizontal: kdefaultPadding),
              padding: EdgeInsets.all(kdefaultPadding),
              decoration: BoxDecoration(
                  color: kBgColor,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: const [
                    BoxShadow(
                      color: kShadowColor,
                      offset: Offset(1, 1),
                      blurRadius: 5,
                    )
                  ]),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: kLightBgColor,
                    backgroundImage: const NetworkImage(
                      "https://th.bing.com/th/id/OIP._BqwAUx-o7UQcvNEuDKmUQHaHa?w=198&h=198&c=7&r=0&o=5&pid=1.7",
                    ),
                  ),
                  gapWidth(size: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: crossStart,
                      children: [
                        Text(
                          "Salem ali ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: kHeadingTextStyle.copyWith(fontSize: 20.sp),
                        ),
                        gapHeight(size: 5),
                        Text(
                          "+971505759448",
                          style: kTitleTextstyle.copyWith(
                              color: kSecounderyTextColor),
                        ),
                        gapHeight(size: 10),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    SlideLeftRoute(
                                        page: const AccountDetailsScreen()));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: kdefaultPadding,
                                    vertical: kdefaultPadding / 2),
                                decoration: BoxDecoration(
                                  color: kLightBgColor,
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                                child: const Center(
                                  child: Text("ACCOUNT DETAILS"),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            gapHeight(size: 20),

            //......................................My Acount Section ......................

            Container(
              margin: EdgeInsets.symmetric(horizontal: kdefaultPadding),
              padding: EdgeInsets.all(kdefaultPadding).copyWith(bottom: 0),
              decoration: BoxDecoration(
                color: kBgColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: const [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(1, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CustomSideWidget(),
                      Text(
                        "MY ACCOUNT",
                        style: kHeadingTextStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      //Image.asset("assets/images/Rectangle 57 (5).png")
                    ],
                  ),
                  gapHeight(size: 20),
                  AccountCard(
                    image: "assets/icons/order2_icon.png",
                    title: "My Orders",
                    ontap: () {
                      Navigator.push(
                          context, SlideLeftRoute(page: const OrderScreen()));
                    },
                  ),
                  AccountCard(
                    image: "assets/icons/location2_icon.png",
                    title: "My Address",
                    ontap: () {
                      Navigator.push(
                          context, SlideLeftRoute(page: const AddressScreen()));
                    },
                  ),
                  AccountCard(
                    image: "assets/icons/global_icon.png",
                    title: "Change Language",
                    ontap: () {
                      Navigator.push(context,
                          SlideLeftRoute(page: const AppLanguageScreen()));
                    },
                  ),
                  AccountCard(
                    image: "assets/icons/person2_icon.png",
                    title: "My Address",
                    ontap: () {
                      Navigator.push(
                          context, SlideLeftRoute(page: const AddressScreen()));
                    },
                  ),
                  AccountCard(
                    image: "assets/icons/logeout_icon.png",
                    title: "Log Out",
                    ontap: () {},
                  ),
                ],
              ),
            ),

            gapHeight(size: 20),

            //...................................... Payment Methods Section ......................

            Container(
              margin: EdgeInsets.symmetric(horizontal: kdefaultPadding),
              padding: EdgeInsets.all(kdefaultPadding).copyWith(bottom: 0),
              decoration: BoxDecoration(
                color: kBgColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: const [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(1, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CustomSideWidget(),
                      Text(
                        "PAYMENT METHODS",
                        style: kHeadingTextStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      //Image.asset("assets/images/Rectangle 57 (5).png")
                    ],
                  ),
                  gapHeight(size: 20),
                  AccountCard(
                    image: "assets/icons/card2_icon.png",
                    title: "Saved Cards",
                    ontap: () {},
                  ),
                ],
              ),
            ),
            gapHeight(size: 20),

            Container(
              margin: EdgeInsets.symmetric(horizontal: kdefaultPadding),
              padding: EdgeInsets.all(kdefaultPadding).copyWith(bottom: 0),
              decoration: BoxDecoration(
                color: kBgColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: const [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(1, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CustomSideWidget(),
                      Text(
                        "HELP & SUPPORT",
                        style: kHeadingTextStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      //Image.asset("assets/images/Rectangle 57 (5).png")
                    ],
                  ),
                  gapHeight(size: 20),
                  AccountCard(
                    image: "assets/icons/customer_icon.png",
                    title: "Customer Support",
                    ontap: () {},
                  ),
                  AccountCard(
                    image: "assets/icons/lock_icon.png",
                    title: "Privacy Policy",
                    ontap: () {},
                  ),
                  AccountCard(
                    image: "assets/icons/document_icon.png",
                    title: "Terms & Conditions",
                    ontap: () {},
                  ),
                ],
              ),
            ),
            gapHeight(size: 20)
          ],
        ),
      ),
    );
  }
}
