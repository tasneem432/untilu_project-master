import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/screens/account%20details/account_details_screen.dart';
import 'package:gireeb/screens/address/address_screen.dart';
import 'package:gireeb/screens/app%20language/app_language_screen.dart';
import 'package:gireeb/screens/invite_friend/invite_friend.dart';
import 'package:gireeb/screens/order_id_screen/order_id_screen.dart';
import 'package:gireeb/screens/orders/order_screen.dart';
import 'package:gireeb/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return ScreenUtilInit(
      designSize: const Size(375, 842),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: kPrimaryColor,
              // ignore: deprecated_member_use
              backgroundColor: kBgColor),
          home: const OrderIdScreen(),
        );
      },
    );
  }
}
