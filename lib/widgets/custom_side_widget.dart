import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants/constants.dart';

class CustomSideWidget extends StatelessWidget {
  const CustomSideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 12.w,
      height: 30.h,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.r),
                  bottomLeft: Radius.circular(5.r),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: kBgColor,
            ),
          )
        ],
      ),
    );
  }
}
