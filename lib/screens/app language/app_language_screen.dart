import 'package:flutter/material.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/widgets/custom_button.dart';

import '../../helpers/constants/constants.dart';

class AppLanguageScreen extends StatelessWidget {
  const AppLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        backgroundColor: kBgColor,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "App Language",
          style: kHeadingTextStyle.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(kdefaultPadding),
        child: Column(
          mainAxisAlignment: mainSpaceBetween,
          children: [
            Text(
              "To make sharing with friends easier then ever, allow the app to access your contacts",
              style: kTitleTextstyle.copyWith(
                height: 2,
                color: kSecounderyTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            //gapHeight(size: 50),
            Image.asset("assets/images/global_img.png"),
            //gapHeight(size: 100),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "English",
                    ontap: () {},
                  ),
                ),
                gapWidth(size: 20),
                Expanded(
                  child: CustomButton(
                    text: "Others",
                    ontap: () {},
                  ),
                )
              ],
            ),
            CustomButton(
              text: "Change",
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
