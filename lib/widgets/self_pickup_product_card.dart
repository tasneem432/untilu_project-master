import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/routes/custom_routes.dart';
import 'package:gireeb/screens/product/product_screen.dart';

import '../helpers/constants/constants.dart';
import '../helpers/responsive/size_config.dart';

class SelfPickupProductCard extends StatelessWidget {
  final VoidCallback ontap;

  const SelfPickupProductCard({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: 120.h,
        child: Row(
          children: [
            Container(
              height: 112.h,
              width: 111.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/food_img.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: TextSpan(
                    text: "20%",
                    style: kHeadingTextStyle.copyWith(color: Colors.green),
                    children: [
                      TextSpan(
                          text: "Off",
                          style:
                              kHeadingTextStyle.copyWith(color: Colors.white)),
                    ],
                  ),
                ),
                // child: Text(
                //   "20% OFF",
                // ),
              ),
            ),
            gapWidth(size: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: mainSpaceAround,
                crossAxisAlignment: crossStart,
                children: [
                  Text(
                    "Ai Yemen Ai Saeed mandi ",
                    style: kTitleTextstyle.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // gapHeight(size: 15),
                  Text(
                    "Arabic,Mandi",
                    style:
                        kTitleTextstyle.copyWith(color: kSecounderyTextColor),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.pin_drop_outlined,
                        color: kPrimaryColor,
                      ),
                      gapWidth(size: 5),
                      const Expanded(
                        child: Text(
                          "3457 Logan LaneLakewood ..",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                  // gapHeight(size: 15),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 13.r,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 12.r,
                          backgroundColor: kBgColor,
                          child: Center(
                            child: Image.asset("assets/icons/car_icon.png"),
                          ),

                          // child: Image.asset(
                          //   "assets/icons/time_icon.png",
                          //   height: 30.h,
                          // ),
                        ),
                      ),
                      gapWidth(size: 10),
                      Text(
                        "5 Km",
                        style: kTitleTextstyle.copyWith(
                            color: kSecounderyTextColor),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
