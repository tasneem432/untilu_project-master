import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/screens/product/widgets/tab_one_item_card.dart';
import 'widgets/bottom_sheet.dart';
import '../../helpers/responsive/size_config.dart';

class TabOne extends StatelessWidget {
  const TabOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kdefaultPadding,
        ).copyWith(top: kdefaultPadding / 2),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: mainStart,
            crossAxisAlignment: crossStart,
            children: [
              Text(
                "Chicken",
                style: kTitleTextstyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TabOneItemCard(
                ontap: () {
                  showMyBottomSheet(context);
                },
              ),
              TabOneItemCard(
                ontap: () {},
              ),
              TabOneItemCard(
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
