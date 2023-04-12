import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InviteFriendPage extends StatelessWidget {
  const InviteFriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView( 
          child: Column(
            children: [
              Container(
                height: 290.h,
                width: 375.w,
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                decoration: BoxDecoration(
                  color: Color(0xFFFEBF00)
        
                ),
                child: Column(
                  children: [
                    SizedBox(height: 50.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back, weight: 24.w, color: Color(0xFF020202),),
                        Text("Invite Friend",style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          
                        ),),
                        Icon(Icons.info_rounded, size: 24.sp,color: Color(0xFF020202),)
        
                      ],
                    ),
                    SizedBox(height: 25.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("0", style: TextStyle(
                              fontSize: 50.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF020202)
                            ),),
                            Text("Register", style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF020202)
                            ),),
        
                          ],
                        ),
        
                        Column(
                          children: [
                            Text("0", style: TextStyle(
                              fontSize: 50.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF020202)
                            ),),
                            Text("Vouchers", style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF020202)
                            ),),
        
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h,),
                    Container(
                      height: 1.h,
                      width: 289.w,
                      color: Colors.white,
                    ),
        
                    SizedBox(height: 18.h,),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("See History",style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),),
                        Icon(Icons.arrow_forward_ios,size: 15.w,color: Color(0xFF020202),)
                      ],
                    ),
                  
                  ],
                ),
        
              ),
        
              SizedBox(height: 56.h,),
        
              SizedBox(
                width: 335.w,
                height: 60.h,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "NS6916",
                    hintStyle: TextStyle(
                      color: Color(0xFF7C7A7A),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.copy_sharp,size: 20.w,color: Colors.black, )),
                    contentPadding: EdgeInsets.only(left: 139.w),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: Color(0xFFD9D9D9),
                      )
                    )
                  ),
                )),
            
              SizedBox(
                height: 20.h,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 73.5.w,
                    height: 73.5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: Color(0xFFEBEBEB),
                        
                      ),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/msg1.png",width: 25.w, height: 25.h,),
                        SizedBox(height: 7.h,),
                        Text("Message", style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                        ),),
                      ],
                    )
        
                  ),
        
                  SizedBox(width: 13.5.w,),
        
        
                  Container(
                    width: 73.5.w,
                    height: 73.5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: Color(0xFFEBEBEB),
                        
                      ),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/msg2.png",width: 25.w, height: 25.h,),
                        SizedBox(height: 7.h,),
                        Text("Message", style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                        ),),
                      ],
                    )
        
                  ),
                  SizedBox(width: 13.5.w,),
        
        
                  Container(
                    width: 73.5.w,
                    height: 73.5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: Color(0xFFEBEBEB),
                        
                      ),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/msg3.png",width: 25.w, height: 25.h,),
                        SizedBox(height: 7.h,),
                        Text("QR", style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                        ),),
                      ],
                    )
        
                  ),
                  SizedBox(width: 13.5.w,),
        
        
                  Container(
                    width: 73.5.w,
                    height: 73.5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: Color(0xFFEBEBEB),
                        
                      ),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/msg4.png",width: 25.w, height: 25.h,),
                        SizedBox(height: 7.h,),
                        Text("More", style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                        ),),
                      ],
                    )
        
                  ),
        
        
                ],
              ),
           
              SizedBox(height: 22.5,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text("All Contracts", style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                ),
              ),
        
              SizedBox(height: 20.h,),
        
              Container(
                width: 335.w,
                height: 60.h,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,size: 24.h,color: Color(0xFF646464),),
                    hintText: "What are you looking for?",
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF646464)
                    ),
                    border: OutlineInputBorder(
                      
                      borderSide: BorderSide(
                        color: Color(0xFFEBEBEB)
                      ),
                      borderRadius: BorderRadius.circular(10.r)
                    )
                  ),
                  
                ),
              ),
        
              SizedBox(height: 45.h,),
              Padding(
                padding:  EdgeInsets.only(left: 20.w, right: 20.w),
                child: Row(
                  children: [
                    Container(
                      width: 64.w,
                      height: 64.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFC21F),
                        borderRadius: BorderRadius.circular(1000.r)
                      ),
                      child: Center(
                        child: Text("A", style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w800,
                          color: Colors.white
                        ),),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Arabian",style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF212121)
                        ),),
                        SizedBox(height: 15.h,),
                        Text("+971505759448",style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF646464)
                        ),)
                      ],
                    ),
                    Expanded(child: SizedBox()),
        
                    Container(
                      width: 100.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFC21F),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Center(
                        child: Text("Invite",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                  
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
