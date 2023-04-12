import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool? isSuffixIcon;
  const CustomTextField({
    super.key,
    this.isSuffixIcon,
    required this.labelText,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 22.r, top: 40.r),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: labelText,
        labelStyle: kTitleTextstyle.copyWith(color: kSecounderyColor),
        hintText: hintText,
        hintStyle: kTitleTextstyle,
        suffixIcon: isSuffixIcon == true
            ? const Icon(
                Icons.check_circle_outline,
                size: 20,
                color: kPrimaryColor,
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: kSecounderyColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: kSecounderyColor, width: 2),
        ),
      ),
    );
  }
}
