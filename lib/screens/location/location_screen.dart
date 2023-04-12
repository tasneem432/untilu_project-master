import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/screens/auth/login_screen.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/helpers/routes/custom_routes.dart';
import '../../widgets/custom_button.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/location_img.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kdefaultPadding,
              vertical: kdefaultPadding,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kBgColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: TextFormField(
                      scrollPadding: EdgeInsets.zero,
                      decoration: const InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: ImageIcon(
                          AssetImage(
                            "assets/icons/location_icon.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: kdefaultPadding,
                    vertical: kdefaultPadding,
                  ),
                  decoration: BoxDecoration(
                      color: kBgColor,
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: const [
                        BoxShadow(
                            color: kShadowColor,
                            offset: Offset(4, 4),
                            blurRadius: 5)
                      ]),
                  child: Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      Text(
                        "DELIVERY LOACATION",
                        style:
                            kTitleTextstyle.copyWith(color: kSecounderyColor),
                      ),
                      gapHeight(size: 15),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/location & home.png",
                            height: 25.h,
                          ),
                          gapWidth(size: 5),
                          Text(
                            "DHAKA, BANGLADESH",
                            style: kTitleTextstyle,
                          ),
                        ],
                      ),
                      gapHeight(size: 18),
                      Text(
                        "DHANMONDI, DHAKA",
                        style:
                            kTitleTextstyle.copyWith(color: kSecounderyColor),
                      ),
                      gapHeight(size: 20),
                      CustomButton(
                        text: "CONFIRM LOCATION",
                        ontap: () {
                          Navigator.push(context,
                              SlideLeftRoute(page: const LoginScreen()));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
