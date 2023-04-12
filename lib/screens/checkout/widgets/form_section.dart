import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';

import '../../../helpers/responsive/size_config.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_dropdown.dart';

class FormSection extends StatefulWidget {
  const FormSection({super.key});

  @override
  State<FormSection> createState() => _FormSectionState();
}

class _FormSectionState extends State<FormSection> {
  List<String> datemonth = [
    'Jan 1',
    'Jan 2',
    'Jan 3',
    'Jan 4',
    'Jan 5',
    'Jan 6',
    'Jan 7',
  ];
  List<String> years = [
    "2000 ",
    "2002 ",
    "2003 ",
    "2004 ",
    "2005 ",
  ];
  String? datemonthValue;
  String? yearValue;
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cvvNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: cardNumberController,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: "Card Number",
            hintText: "",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: kPrimaryColor, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: kPrimaryColor, width: 2),
            ),
          ),
        ),
        gapHeight(size: 30),
        Row(
          children: [
            Expanded(
              child: Container(
                //padding: EdgeInsets.only(left: 15.r),
                //height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  //border: Border(bottom: BorderSide(color: kSecounderyColor)),
                  color: kBgColor,
                ),
                child: Column(
                  children: [
                    CustomDropdown(
                      hintText: "datemonth",
                      items: datemonth,
                      value: datemonthValue,
                      onChanged: (newValue) {
                        setState(() {
                          datemonthValue = newValue;
                        });
                      },
                      onSaved: (newValue) {
                        datemonthValue = newValue;
                      },
                      validator: (newValue) {
                        if (newValue == null || newValue.isEmpty) {
                          return "can't be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    Container(
                      height: 3,
                      width: 200,
                      color: kSecounderyColor,
                    )
                  ],
                ),
              ),
            ),
            gapWidth(size: 15),
            Expanded(
              child: Container(
                //padding: EdgeInsets.only(left: 15.r),
                //height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  //border: Border(bottom: BorderSide(color: kSecounderyColor)),
                  color: kBgColor,
                ),
                child: Column(
                  children: [
                    CustomDropdown(
                        hintText: "year",
                        items: years,
                        value: yearValue,
                        onChanged: (newValue) {
                          setState(() {
                            yearValue = newValue;
                          });
                        },
                        onSaved: (newValue) {
                          yearValue = newValue;
                        },
                        validator: (newValue) {
                          if (newValue == null || newValue.isEmpty) {
                            return "can't be empty";
                          } else {
                            return null;
                          }
                        }),
                    Container(
                      height: 3,
                      //width: 200,
                      color: kSecounderyColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        gapHeight(size: 30),
        TextFormField(
          controller: cvvNumberController,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "cvv",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: kSecounderyColor, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: kSecounderyColor, width: 2),
            ),
          ),
        ),
        gapHeight(size: 20),
        Row(
          mainAxisAlignment: mainEnd,
          children: [
            SizedBox(
              width: 150,
              child: CustomButton(
                text: "PAY NOW",
                ontap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
