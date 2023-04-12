import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants/constants.dart';
import '../helpers/responsive/size_config.dart';

class CommingSoonCard extends StatelessWidget {
  final String image;
  final String text;

  const CommingSoonCard({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          mainAxisAlignment: mainCenter,
          crossAxisAlignment: crossCenter,
          children: [
            gapHeight(size: 8),
            Container(
              height: 75.h,
              width: 75.w,
              // padding: EdgeInsets.symmetric(
              //     horizontal: kdefaultPadding * 1.5,
              //     vertical: kdefaultPadding),
              decoration: BoxDecoration(
                color: kBgColor,
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: kBorderColor),
              ),
              child: Center(
                  child: Image.asset(
                image,
                height: 45.h,
              )),
            ),
            gapHeight(size: 5),
            Text(
              text,
              style: kTitleTextstyle.copyWith(
                  fontSize: 14.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 5.r),
          decoration: BoxDecoration(
              color: const Color(0xffA9A9A9),
              borderRadius: BorderRadius.circular(10.r)),
          child: Center(
              child: Text(
            "Comming soon",
            style:
                kTitleTextstyle.copyWith(color: Colors.white, fontSize: 10.sp),
          )),
        ),
      ],
    );
  }
}
