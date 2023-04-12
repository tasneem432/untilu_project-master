import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/helpers/routes/custom_routes.dart';
import 'package:gireeb/screens/checkout/checkout_payment.dart';
import 'package:gireeb/widgets/custom_button.dart';

import '../../widgets/item_count_card.dart';
import '../../widgets/payment_summary_card.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: Column(
          children: [
            const HeadingSection(),
            const Divider(
              color: kDividerColor,
              thickness: 1,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      gapHeight(size: 20),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: kdefaultPadding / 1.5,
                            vertical: kdefaultPadding / 1.5),
                        decoration: BoxDecoration(
                          color: kBgColor,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: const [
                            BoxShadow(
                              color: kShadowColor,
                              offset: Offset(3, 3),
                              blurRadius: 5,
                            ),
                            BoxShadow(
                              color: kShadowColor,
                              offset: Offset(-2, -2),
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 80.h,
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/food_img.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                gapWidth(size: 20),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: mainCenter,
                                    crossAxisAlignment: crossStart,
                                    children: [
                                      Text(
                                        "Half Chicken Mandi",
                                        style: kHeadingTextStyle.copyWith(
                                            fontSize: 16.sp),
                                      ),
                                      gapHeight(size: 5),

                                      // gapHeight(size: 15),
                                      Row(
                                        mainAxisAlignment: mainSpaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                //horizontal: kdefaultPadding / 1.5,
                                                vertical: kdefaultPadding / 3),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              //color: kBorderColor,
                                            ),
                                            child: Center(
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                      "assets/icons/card_icon.png"),
                                                  gapWidth(size: 5),
                                                  Text(
                                                    "15 AED",
                                                    style: kTitleTextstyle
                                                        .copyWith(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const ItemCountCard(
                                            height: 30,
                                            width: 80,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            gapHeight(size: 10),
                            const Divider(
                              color: kDividerColor,
                              thickness: 1,
                            ),
                            //gapHeight(size: 10),
                            Row(
                              mainAxisAlignment: mainEnd,
                              children: [
                                Container(
                                  // color: Colors.red,
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        prefixIcon: ImageIcon(
                                          AssetImage(
                                              "assets/icons/signature_icon.png"),
                                          color: kPrimaryColor,
                                        ),
                                        // contentPadding: EdgeInsets.all(20),
                                        border: InputBorder.none,
                                        hintText: "Add anote",
                                        hintStyle: TextStyle()),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      gapHeight(size: 20),

                      //...................,.......... Voucher section .........................
                      Text(
                        "Voucher",
                        style: kHeadingTextStyle,
                      ),
                      gapHeight(size: 5),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(
                          horizontal: kdefaultPadding,
                          vertical: kdefaultPadding,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: kLightBgColor),
                          color: kBgColor,
                        ),
                        child: Row(
                          mainAxisAlignment: mainSpaceBetween,
                          children: [
                            Text(
                              "Click to add voucher code",
                              style: kTitleTextstyle.copyWith(
                                  color: kSecounderyTextColor),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.arrow_forward,
                                color: kSecounderyColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      gapHeight(size: 20),

                      //................................ Payment section .........................

                      Text(
                        "Payment Summary",
                        style: kHeadingTextStyle,
                      ),
                      gapHeight(size: 20),
                      const PaymentSummaryCard(
                        textColor: kSecounderyTextColor,
                        firstText: "Type",
                        endText: "Self Pickup",
                      ),
                      const PaymentSummaryCard(
                        textColor: kSecounderyTextColor,
                        firstText: "Subtotal",
                        endText: "30.00AED",
                      ),
                      const PaymentSummaryCard(
                        textColor: Color(0xffCE4A4A),
                        firstText: "Discount",
                        endText: "-3.00AED",
                      ),
                      const PaymentSummaryCard(
                        textColor: kSecounderyTextColor,
                        firstText: "Service Charge",
                        endText: "2.00 AED oo",
                      ),
                      gapHeight(size: 15),
                      const Divider(
                        color: kDividerColor,
                        thickness: 1,
                      ),
                      gapHeight(size: 20),
                      Row(
                        mainAxisAlignment: mainSpaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Total Amount",
                              style: kHeadingTextStyle,
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "29.00 AED",
                                style: kHeadingTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      gapHeight(size: 20),

                      //................................Submit Button .....................
                      CustomButton(
                        text: "CheckOut",
                        ontap: () {
                          Navigator.push(context,
                              SlideLeftRoute(page: const CheckOutPayment()));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kdefaultPadding,
        vertical: kdefaultPadding,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: crossStart,
            mainAxisAlignment: mainSpaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back),
              ),
              Column(
                children: [
                  Text(
                    "Checkout ",
                    style: kHeadingTextStyle.copyWith(fontSize: 20.sp),
                  ),
                  Text(
                    "Ai Yemen Ai Saeed Mandi",
                    style:
                        kTitleTextstyle.copyWith(color: kSecounderyTextColor),
                  )
                ],
              ),
              Container()
            ],
          ),
        ],
      ),
    );
  }
}
