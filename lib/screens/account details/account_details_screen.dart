import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';

import '../../widgets/custom_text_field.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController mobileNumController = TextEditingController();
    TextEditingController birthDateController = TextEditingController();
    TextEditingController genderController = TextEditingController();

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
          "Account Details",
          style: kHeadingTextStyle.copyWith(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage("assets/icons/edit2_icon.png"),
              color: kTextColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kdefaultPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: crossCenter,
            children: [
              gapHeight(size: 30),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 60.r,
                    backgroundColor: kPrimaryColor,
                    child: CircleAvatar(
                      radius: 58.r,
                      backgroundImage: const NetworkImage(
                        "https://th.bing.com/th/id/OIP.9UChLYifGrntmmzueKA9rAHaHh?w=187&h=189&c=7&r=0&o=5&pid=1.7",
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15.r,
                    right: 0,
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 14.r,
                        backgroundColor: kPrimaryColor,
                        child: const Center(
                          child: Icon(
                            Icons.photo_camera,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              gapHeight(size: 40),

              //..................................... first name form..............................

              CustomTextField(
                controller: firstNameController,
                hintText: "Salem",
                labelText: "Firs Name",
              ),
              gapHeight(size: 30),

              //..................................... last name form..............................

              CustomTextField(
                controller: lastNameController,
                hintText: "Ali",
                labelText: "Last Name",
              ),
              gapHeight(size: 30),

              //..................................... Mobile Number form..............................

              CustomTextField(
                controller: mobileNumController,
                hintText: "235345345345",
                labelText: "Mobile Number",
                isSuffixIcon: true,
              ),
              gapHeight(size: 30),

              Row(
                children: [
                  //..................................... Birth date form..............................
                  Expanded(
                    child: TextFormField(
                      controller: birthDateController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 22.r, top: 40.r),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: "Birth Date",
                        labelStyle:
                            kTitleTextstyle.copyWith(color: kSecounderyColor),
                        hintText: "31/12/1099",
                        hintStyle: kTitleTextstyle,
                        prefixIcon: const ImageIcon(
                            AssetImage("assets/icons/person2_icon.png")),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                              color: kSecounderyColor, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                              color: kSecounderyColor, width: 2),
                        ),
                      ),
                    ),
                  ),
                  gapWidth(size: 12),
                  Expanded(
                    //..................................... Gender form..............................
                    child: CustomTextField(
                      controller: genderController,
                      hintText: "Male",
                      labelText: "Gender",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
