import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderIdScreen extends StatelessWidget {
  const OrderIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 112.h,
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 24.w,
                      color: Color(0xFF020202),
                    ),
                    Text(
                      "Order id:0d58476",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Text(
                      "Help",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF646464)),
                    )
                  ],
                ),
              ),
              Image.asset(
                "assets/images/order_bg.png",
                width: 375.w,
                height: 272.h,
                fit: BoxFit.cover,
              ),
              Stack(
                children: [
                  Container(
                    width: 375.w,
                    height: 49.h,
                    color: Color(0xFFF0E8E5),
                  ),
                  Center(
                    child: Container(
                      width: 335.w,
                      height: 122.h,
                      margin: EdgeInsets.only(top: 9.h),
                      padding: EdgeInsets.only(left: 14.w, right: 14.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/order_soup.png",
                            width: 86.w,
                            height: 86.h,
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 29.h,
                              ),
                              Text(
                                "Order picked up Enjoy",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF020202),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Your Meal",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF020202),
                                ),
                              ),
                              SizedBox(
                                height: 29.h,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 54.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Delivery Address",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/order_loc.png",
                      width: 23.w,
                      height: 23.h,
                    ),
                    SizedBox(
                      width: 11.w,
                    ),
                    Text(
                      "Ras al Khaima",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF646464)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 53.w),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur exercitation ullamco laboris ",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF646464)),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Order From",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 80.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/order_shampoo.png",
                              height: 62.h,
                              width: 92.w,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "M14 Cafe - Ai Burairat",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF020202)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Lorem ipsum dolor amet, consectetur\n exercitation ullamco laboris ",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF020202),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Date: 31 Mar 2023 11:41 PM",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF646464),
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      "Order# OD202390234161774",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF646464),
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/order_sig.png",
                          width: 17.w,
                          height: 17.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Your Instructions:",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF646464),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Container(
                      width: 335.w,
                      height: 135.h,
                      padding: EdgeInsets.only(left: 15.w, right: 15.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Image.asset("assets/images/order_burger.png", width: 81.w, height: 81.h,fit: BoxFit.cover,)),
                          SizedBox(width: 15.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hald Chicken Mandi",style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),),
                              SizedBox(height: 22.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/order_card.png",width: 18.w,height: 12.h,),
                                  SizedBox(width: 6.w,),
                                  Text("15 AED", style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),),
                                  SizedBox(width: 56.w,),
                                  Container(
                                    width: 80.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      border: Border.all(
                                        color: Color(0xFFC1C5C8),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text("*7", style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(height: 43.h,),
                    Text("Payment Summary",style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),),
                    SizedBox(height: 30.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Type",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF646464),
                        ),),
                        Text("Self Picked",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF646464),
                        ),),
                      ],
                    ),

                    SizedBox(height: 25.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF646464),
                        ),),
                        Text("30.00AED",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF646464),
                        ),),
                      ],
                    ),

                    SizedBox(height: 25.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Discount",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFCE4A4A),
                        ),),
                        Text("-3.00AED",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFCE4A4A),
                        ),),
                      ],
                    ),

                    SizedBox(height: 25.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Service Charge",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF646464),
                        ),),
                        Text("2.00 AED",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF646464),
                        ),),
                      ],
                    ),

                    SizedBox(height: 34.h,),

                    Container(
                      width: 335.w,
                      height: 1.h,
                      color: Color(0xFFEBEBEB),
                    ),

                    SizedBox(height: 30.h,),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Amount",style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF020202),
                        ),),
                        Text("29.00 AED",style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF020202),
                        ),),
                      ],
                    ),

                    SizedBox(height: 34.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment Method",style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF020202),
                        ),),
                        Row(
                          children: [
                            Image.asset("assets/images/order_apple.png",width: 16.w,height: 16.h,),
                            SizedBox(width: 3.w,),
                            Text("Pay",style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF020202),
                        ),),

                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 29.h,),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("Apple Pay",style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF020202)
                      ),),
                    ),
                    
                    
                    SizedBox(
                      height: 91.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
