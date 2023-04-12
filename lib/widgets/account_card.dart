import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants/constants.dart';

class AccountCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback ontap;

  const AccountCard({
    super.key,
    required this.title,
    required this.image,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kdefaultPadding / 3),
      child: Column(
        children: [
          InkWell(
            onTap: ontap,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(kdefaultPadding / 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: kLightBgColor,
                  ),
                  child: Center(child: Image.asset(image)),
                ),
                gapWidth(size: 16),
                Text(
                  title,
                  style: kTitleTextstyle.copyWith(color: kSecounderyTextColor),
                )
              ],
            ),
          ),
          gapHeight(size: 4),
          const Divider(
            color: kDividerColor,
            thickness: 1,
          )
        ],
      ),
    );
  }
}
