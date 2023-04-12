import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/screens/checkout/widgets/form_section.dart';

void addCardBottomSheet(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.r),
        topRight: Radius.circular(20.r),
      ),
    ),
    backgroundColor: kBgColor,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 660,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kdefaultPadding,
            vertical: kdefaultPadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: crossStart,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 5,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: kSecounderyColor,
                    ),
                  ),
                ),
                gapHeight(size: 20),
                Container(
                  padding: EdgeInsets.all(kdefaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: kPrimaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: mainSpaceBetween,
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Text(
                        "Card Details",
                        style: kHeadingTextStyle.copyWith(color: Colors.white),
                      ),
                      Container()
                    ],
                  ),
                ),
                gapHeight(size: 10),
                Text(
                  "We accept the following card types.",
                  style: kTitleTextstyle.copyWith(color: kSecounderyColor),
                ),
                gapHeight(size: 5),
                Image.asset("assets/images/card_img.png"),
                gapHeight(size: 20),
                const FormSection(),
                gapHeight(size: 100),
              ],
            ),
          ),
        ),
      );
    },
  );
}
