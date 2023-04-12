import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/screens/checkout/widgets/add_card_bottomsheet.dart';

import '../../helpers/responsive/size_config.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/payment_summary_card.dart';

class CheckOutPayment extends StatelessWidget {
  const CheckOutPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
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
                  //................................ Heading Section .....................
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
                            style: kTitleTextstyle.copyWith(
                                color: kSecounderyTextColor),
                          )
                        ],
                      ),
                      Container()
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kdefaultPadding,
                ),
                child: SingleChildScrollView(
                  child: Column(crossAxisAlignment: crossStart, children: [
                    gapHeight(size: 20),

                    //................................ Self Pickup card Section .....................

                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: kdefaultPadding / 1.5,
                          vertical: kdefaultPadding),
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
                        mainAxisAlignment: mainCenter,
                        crossAxisAlignment: crossCenter,
                        children: [
                          Row(
                            mainAxisAlignment: mainCenter,
                            crossAxisAlignment: crossCenter,
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
                          gapHeight(size: 10),
                          const Divider(
                            color: kDividerColor,
                            thickness: 1,
                          ),
                          gapHeight(size: 10),
                          Row(
                            mainAxisAlignment: mainCenter,
                            crossAxisAlignment: crossCenter,
                            children: [
                              ImageIcon(
                                const AssetImage("assets/icons/car_icon2.png"),
                                size: 30.h,
                                color: kPrimaryColor,
                              ),
                              gapWidth(size: 5),
                              Text(
                                "Your order will be ready in 31 minutes",
                                style: kTitleTextstyle.copyWith(
                                  color: kSecounderyTextColor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    gapHeight(size: 20),

                    //................................ Pay now  Section .....................

                    Text(
                      "Pay with",
                      style: kHeadingTextStyle,
                    ),
                    gapHeight(size: 10),

                    InkWell(
                      onTap: () {
                        addCardBottomSheet(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(kdefaultPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(color: kPrimaryColor)),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 10.r,
                              backgroundColor: kShadowColor,
                            ),
                            gapWidth(size: 10),
                            Text(
                              "New Card",
                              style: kTitleTextstyle.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            Image.asset("assets/icons/card_icon.png")
                          ],
                        ),
                      ),
                    ),
                    gapHeight(size: 5),
                    Container(
                      padding: EdgeInsets.all(kdefaultPadding),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: kBorderColor)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 10.r,
                            backgroundColor: kShadowColor,
                          ),
                          gapWidth(size: 10),
                          Text(
                            "cryptocurrency",
                            style: kTitleTextstyle.copyWith(
                                color: kSecounderyTextColor),
                          ),
                          const Spacer(),
                          Image.asset("assets/icons/bitcoin_icon.png"),
                          Image.asset("assets/icons/ethereum_icon.png"),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: kdefaultPadding / 2,
                              vertical: kdefaultPadding / 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: kShadowColor,
                            ),
                            child: Center(
                                child: Text(
                              "coming soon",
                              style: kTitleTextstyle.copyWith(fontSize: 10.sp),
                            )),
                          ),
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
                      text: "Place an Order",
                      ontap: () {},
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
