import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';

class OTPForm extends StatelessWidget {
  const OTPForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: mainSpaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            color: const Color(0xffEDEFF4),
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                  hintStyle: kHeadingTextStyle.copyWith(
                      color: kSecounderyTextColor, fontWeight: FontWeight.w500),
                  hintText: "0",
                  border: InputBorder.none),
              style: kHeadingTextStyle,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          Container(
            height: 50,
            width: 50,
            color: const Color(0xffEDEFF4),
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                  hintStyle: kHeadingTextStyle.copyWith(
                      color: kSecounderyTextColor, fontWeight: FontWeight.w500),
                  hintText: "0",
                  border: InputBorder.none),
              style: kHeadingTextStyle,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          Container(
            height: 50,
            width: 50,
            color: const Color(0xffEDEFF4),
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                  hintStyle: kHeadingTextStyle.copyWith(
                      color: kSecounderyTextColor, fontWeight: FontWeight.w500),
                  hintText: "0",
                  border: InputBorder.none),
              style: kHeadingTextStyle,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          Container(
            height: 50,
            width: 50,
            color: const Color(0xffEDEFF4),
            child: TextFormField(
              // onChanged: (value) {
              //   if (value.length == 1) {
              //     //FocusScope.of(context).nextFocus();
              //   }
              // },
              decoration: InputDecoration(
                  hintStyle: kHeadingTextStyle.copyWith(
                      color: kSecounderyTextColor, fontWeight: FontWeight.w500),
                  hintText: "0",
                  border: InputBorder.none),
              style: kHeadingTextStyle,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
