import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/screens/product/tab_one.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  /// List of Tab Bar Item
  List<String> items = [
    "CHICKEN",
    "MEAT",
    "SEAFOOD",
    "QALABA",
  ];

  List screen = [
    const TabOne(),
    // const Center(child: Text("CHICKEN")),
    const Center(child: Text("MEAT")),
    const Center(child: Text("SEAFOOD")),
    const Center(child: Text("QALABA")),
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.airplane_ticket,
    Icons.newspaper,
    Icons.search,
    Icons.feed,
    Icons.post_add,
    Icons.local_activity,
    Icons.settings,
    Icons.person
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 250.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/product_img.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200.r,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          //.......................... Item name card section .........................
                          Container(
                            // height: 170.h,
                            width: 330.w,
                            padding: EdgeInsets.all(kdefaultPadding),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: kBgColor,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xffE5E5E5),
                                  offset: Offset(3, 3),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: crossStart,
                              children: [
                                Text(
                                  "Ai Yemen Ai Saeed mandi",
                                  style: kTitleTextstyle.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                                gapHeight(size: 10),
                                Text(
                                  "Arabic,Mandi",
                                  style: kTitleTextstyle.copyWith(
                                      color: kSecounderyTextColor),
                                ),
                                gapHeight(size: 20),
                                Row(
                                  mainAxisAlignment: mainSpaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: kdefaultPadding,
                                        vertical: kdefaultPadding / 2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: kLightGreenColor,
                                        borderRadius:
                                            BorderRadius.circular(6.r),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "Open",
                                        style: kTitleTextstyle.copyWith(
                                            color: kGreenColor,
                                            fontWeight: FontWeight.w800),
                                      )),
                                    ),
                                    Text(
                                      "Closes at 04:00 AM",
                                      style: kTitleTextstyle.copyWith(
                                          color: kSecounderyTextColor),
                                    )
                                  ],
                                ),
                                gapHeight(size: 15),
                                Row(
                                  mainAxisAlignment: mainSpaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/self_pickup.png",
                                          height: 19.h,
                                        ),
                                        gapWidth(size: 5),
                                        Text(
                                          "Self Pickup ",
                                          style: kTitleTextstyle.copyWith(
                                            fontSize: 14.sp,
                                            color: kSecounderyTextColor,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const ImageIcon(
                                          AssetImage(
                                              "assets/icons/ibutton_icon.png"),
                                        ),
                                        gapWidth(size: 5),
                                        Text("Info",
                                            style: kTitleTextstyle.copyWith(
                                              fontSize: 14.sp,
                                              color: kSecounderyTextColor,
                                            ))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          gapHeight(size: 20),

                          //.......................... Item categori  section .........................
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60.h,
                            decoration: BoxDecoration(
                              color: kLightBgColor,
                              border: Border.all(color: kLightBgColor),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xffE5E5E5),
                                  offset: Offset(-1, -1),
                                  blurRadius: 2,
                                ),
                                BoxShadow(
                                  color: Color(0xffE5E5E5),
                                  offset: Offset(1, 1),
                                  blurRadius: 2,
                                )
                              ],
                            ),
                            child: Center(
                              child: Row(
                                  mainAxisAlignment: mainCenter,
                                  crossAxisAlignment: crossCenter,
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemCount: items.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (ctx, index) {
                                            return Center(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    current = index;
                                                  });
                                                },
                                                child: AnimatedContainer(
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  margin:
                                                      const EdgeInsets.all(5),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: kdefaultPadding,
                                                    vertical:
                                                        kdefaultPadding / 2,
                                                  ),
                                                  // width: 150,
                                                  // height: 80,
                                                  decoration: BoxDecoration(
                                                    color: current == index
                                                        ? kPrimaryColor
                                                        : kLightBgColor,
                                                    borderRadius: current ==
                                                            index
                                                        ? BorderRadius.circular(
                                                            50.r)
                                                        : BorderRadius.circular(
                                                            50.r),
                                                    border: current == index
                                                        ? Border.all(
                                                            color: kGreenColor,
                                                            width: 2)
                                                        : null,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      items[index],
                                                      style: kTitleTextstyle
                                                          .copyWith(
                                                              color: current ==
                                                                      index
                                                                  ? Colors.white
                                                                  : kSecounderyTextColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 50.h,
                                          width: 2.w,
                                          color: kSecounderyTextColor,
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.tune))
                                      ],
                                    )
                                  ]),
                            ),
                          ),
                          gapHeight(size: 10),

                          //.......................... Product section .........................

                          Expanded(child: screen[current]),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: kdefaultPadding,
                              vertical: kdefaultPadding / 2),
                          margin:
                              EdgeInsets.symmetric(horizontal: kdefaultPadding)
                                  .copyWith(bottom: kdefaultPadding / 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kSecounderyColor,
                          ),
                          child: Row(
                            mainAxisAlignment: mainSpaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15.r,
                                    backgroundColor: kShadowColor,
                                    child: Center(
                                      child: Text(
                                        "0",
                                        style: kTitleTextstyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  gapWidth(size: 8),
                                  Text(
                                    "View Basket",
                                    style: kTitleTextstyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "0.0 AED",
                                    style: kTitleTextstyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  gapWidth(size: 8),
                                  Container(
                                    padding: EdgeInsets.all(3.r),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                        size: 15.sp,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
