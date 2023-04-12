import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helpers/constants/constants.dart';
import '../../../helpers/responsive/size_config.dart';

class TabOneItemCard extends StatelessWidget {
  final VoidCallback ontap;
  const TabOneItemCard({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          SizedBox(
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

                      // gapHeight(size: 15),
                      Row(
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
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          gapHeight(size: 5),
          const Divider(
            color: kBorderColor,
            thickness: 1,
          ),
          gapHeight(size: 5),
        ],
      ),
    );
  }
}
