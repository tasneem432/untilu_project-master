import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants/constants.dart';
import '../helpers/responsive/size_config.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kdefaultPadding / 2),
      height: 111.h,
      child: Row(
        children: [
          Container(
            height: 111.h,
            width: 111.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage("assets/images/food_img.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          gapWidth(size: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: mainSpaceBetween,
              crossAxisAlignment: crossStart,
              children: [
                Text(
                  "Sugar & Salt",
                  style: kHeadingTextStyle,
                ),
                // gapHeight(size: 15),
                Text(
                  "Desserts",
                  style: kTitleTextstyle.copyWith(color: kSecounderyTextColor),
                ),
                // gapHeight(size: 15),
                Row(
                  mainAxisAlignment: mainSpaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/time_icon.png",
                          height: 30.h,
                        ),
                        gapWidth(size: 10),
                        Text(
                          "41 mins",
                          style: kTitleTextstyle.copyWith(
                              color: kSecounderyTextColor),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: kdefaultPadding,
                          vertical: kdefaultPadding / 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: kLightGreenColor,
                      ),
                      child: Center(
                          child: Text(
                        "Free Delivery",
                        style: kTitleTextstyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w800,
                            color: kGreenColor),
                      )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
