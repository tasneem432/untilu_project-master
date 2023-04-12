import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/screens/checkout/checkout_screen.dart';
import 'package:gireeb/widgets/item_count_card.dart';

import '../../../helpers/constants/constants.dart';
import '../../../helpers/responsive/size_config.dart';
import '../../../helpers/routes/custom_routes.dart';

void showMyBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 600,
        decoration: BoxDecoration(
          color: kLightBgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: crossStart,
            mainAxisAlignment: mainSpaceBetween,
            children: [
              Container(
                height: 300.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/product_img.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kdefaultPadding,
                  vertical: kdefaultPadding / 2,
                ),
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(
                      "Half Chicken Mandi",
                      style: kHeadingTextStyle.copyWith(
                          fontSize: 20.sp, fontWeight: FontWeight.w600),
                    ),
                    gapHeight(size: 40),
                    Row(
                      mainAxisAlignment: mainSpaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: kdefaultPadding / 1.5,
                              vertical: kdefaultPadding / 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: kBorderColor,
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Image.asset("assets/icons/card_icon.png"),
                                gapWidth(size: 5),
                                Text(
                                  "15 AED",
                                  style: kTitleTextstyle.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const ItemCountCard(
                          height: 36,
                          width: 112,
                        )
                      ],
                    ),
                    gapHeight(size: 30),

                    //.......................... Request Text section .........................

                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Any Special Request ?",
                          labelStyle:
                              kTitleTextstyle.copyWith(color: kBorderColor),
                          hintStyle: kTitleTextstyle.copyWith(
                              fontWeight: FontWeight.w400, color: kBorderColor),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(color: kBorderColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(color: kBorderColor),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: const BorderSide(color: kBorderColor),
                          ),
                        ),
                      ),
                    ),

                    gapHeight(size: 25),

                    //.......................... Button section .........................

                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            SlideLeftRoute(page: const CheckOutScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kdefaultPadding,
                          vertical: kdefaultPadding,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: kPrimaryColor,
                        ),
                        child: Row(
                          mainAxisAlignment: mainSpaceBetween,
                          children: [
                            Text(
                              "Add To Basket",
                              style: kTitleTextstyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "15 ADE",
                              style: kTitleTextstyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
