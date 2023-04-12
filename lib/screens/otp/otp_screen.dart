import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/helpers/routes/custom_routes.dart';
import 'package:gireeb/screens/nav%20bar/nav_bar_screen.dart';
import 'package:gireeb/screens/otp/otp_form.dart';
import '../../widgets/custom_button.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kdefaultPadding,
            vertical: kdefaultPadding,
          ),
          child: Column(
            crossAxisAlignment: crossCenter,
            mainAxisAlignment: mainCenter,
            children: [
              Center(child: Image.asset("assets/images/otp_img.png")),
              gapHeight(size: 50.h),
              Text(
                "Code Verification:",
                style: kTitleTextstyle,
              ),
              gapHeight(size: 10),
              Text(
                "Enter your verification code here:",
                style: kTitleTextstyle.copyWith(color: kSecounderyTextColor),
              ),
              gapHeight(size: 10),
              Row(
                mainAxisAlignment: mainCenter,
                children: [
                  Text(
                    "+981 215 1545",
                    style: kTitleTextstyle,
                  ),
                  gapWidth(size: 10),
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/icons/edit_icon.png"),
                  ),
                ],
              ),
              gapHeight(size: 30),
              const OTPForm(),
              gapHeight(size: 30),
              Row(
                children: [
                  Text(
                    "Don’t get code?",
                    style:
                        kTitleTextstyle.copyWith(color: kSecounderyTextColor),
                  ),
                  gapWidth(size: 5),
                  Text(
                    "Resend",
                    style: kTitleTextstyle.copyWith(
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
              gapHeight(size: 40),
              CustomButton(
                text: "DONE",
                ontap: () {
                  Navigator.push(context, ScaleRoute(page: const NavBar()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
