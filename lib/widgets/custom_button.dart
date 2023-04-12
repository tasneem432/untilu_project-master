import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;

  const CustomButton({
    super.key,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.r),
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: const [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(3, 3),
                blurRadius: 5,
              )
            ]),
        child: Center(
          child: Text(
            text,
            style: kHeadingTextStyle.copyWith(
                color: kWhiteText, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
