import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants/constants.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback ontap;

  const CardWidget({
    super.key,
    required this.image,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
            height: 75.h,
            width: 75.w,
            // padding: EdgeInsets.symmetric(
            //     horizontal: kdefaultPadding * 1.5,
            //     vertical: kdefaultPadding),
            decoration: BoxDecoration(
              color: kBgColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: Center(
                child: Image.asset(
              image,
              height: 45.h,
            )),
          ),
        ),
        gapHeight(size: 5),
        Text(
          text,
          style: kTitleTextstyle.copyWith(
              fontWeight: FontWeight.w500, fontSize: 14.sp),
        )
      ],
    );
  }
}
