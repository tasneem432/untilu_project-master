import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/helpers/routes/custom_routes.dart';
import 'package:gireeb/screens/otp/otp_screen.dart';
import '../../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = false;
  bool? isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kdefaultPadding,
            vertical: kdefaultPadding,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: mainSpaceBetween,
                children: [
                  const ImageIcon(
                    AssetImage(
                      "assets/icons/back_icon.png",
                    ),
                    color: kTextColor,
                    // size: 10.sp,
                  ),
                  // Spacer(),
                  Center(
                    child: Text(
                      "LOGIN NOW",
                      style: kHeadingTextStyle,
                    ),
                  ),
                  //Spacer(),
                  Container(
                    width: 30.w,
                  ),
                ],
              ),
              gapHeight(size: 40),
              CircleAvatar(
                radius: 130.r,
                backgroundImage: const AssetImage("assets/images/logo.png"),
              ),
              gapHeight(size: 50),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: "Enter Your Number",
                  hintText: "Ex (+970000 1111)",
                  labelStyle: kTitleTextstyle.copyWith(color: kBorderColor),
                  hintStyle: kTitleTextstyle.copyWith(
                      fontWeight: FontWeight.w400, color: kBorderColor),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: kBorderColor),
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: kSecounderyColor)),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: kBorderColor)),
                ),
              ),
              gapHeight(size: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: kPrimaryColor,
                    focusColor: kPrimaryColor,
                    fillColor: MaterialStateProperty.all(kPrimaryColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I have Read and accept the ",
                            style: kTitleTextstyle),
                        TextSpan(
                          text: "Privacy Policy ",
                          style: kTitleTextstyle.copyWith(color: kPrimaryColor),
                        ),
                        TextSpan(
                          text:
                              "And Agree Thar My Personal Data Will Be Processed By You",
                          style: kTitleTextstyle,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              gapHeight(size: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: kPrimaryColor,
                    focusColor: kPrimaryColor,
                    fillColor: MaterialStateProperty.all(kPrimaryColor),
                    value: isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked2 = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I have Read and accept the ",
                            style: kTitleTextstyle),
                        TextSpan(
                          text: "Privacy Policy ",
                          style: kTitleTextstyle.copyWith(color: kPrimaryColor),
                        ),
                        TextSpan(
                          text: "And ",
                          style: kTitleTextstyle,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomButton(
                text: "LOGIN NOW",
                ontap: () {
                  Navigator.push(
                      context, SlideLeftRoute(page: const OTPScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
