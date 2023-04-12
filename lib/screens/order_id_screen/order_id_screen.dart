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
            children: [
              Container(
                height: 112.h,
                padding: EdgeInsets.only(left: 20.w,right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back,size: 24.w, color: Color(0xFF020202),),
                    Text("Order id:0d58476",style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),),
                    Text("Help",style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF646464)
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
