import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/constants/constants.dart';
import '../helpers/responsive/size_config.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kdefaultPadding / 2),
      padding: EdgeInsets.all(kdefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: kBorderColor, width: 2),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage("assets/icons/location2_icon.png"),
              color: kPrimaryColor,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: crossStart,
              children: [
                Text(
                  "Home",
                  style: kTitleTextstyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                gapHeight(size: 5),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur exercitation ullamco laboris ",
                  style: kTitleTextstyle.copyWith(
                    color: kSecounderyTextColor,
                    fontSize: 14.sp,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
