import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';
import 'package:gireeb/helpers/routes/custom_routes.dart';
import 'package:gireeb/screens/location/location_screen.dart';
import '../../widgets/custom_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final PageController _controller1 = PageController();
  final PageController _controller2 = PageController();

  int _currentPageIndex1 = 0;
  int _currentPageIndex2 = 0;

  List image = [
    "assets/images/img1.png",
    "assets/images/img3.png",
    "assets/images/img2.png",
  ];

  List textWidget = [
    Center(
      child: Column(
        crossAxisAlignment: crossCenter,
        mainAxisAlignment: mainCenter,
        children: const [
          Text(
            "BROWSE YOUR MENU AND \nORDER DIRECTLY",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Our App Can Send you everywhere, evenspace. we provide the best service ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    ),
    Center(
      child: Column(
        crossAxisAlignment: crossCenter,
        mainAxisAlignment: mainCenter,
        children: const [
          Text(
            "EVEN TO SPACE WITH US ! \n TOGETHER ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Our App Can Send you everywhere, evenspace. we provide the best service ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    ),
    Center(
      child: Column(
        crossAxisAlignment: crossCenter,
        mainAxisAlignment: mainCenter,
        children: const [
          Text(
            "DELIVERY TO YOUR DOOR",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Our App Can Send you everywhere, evenspace. we provide the best service ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
          child: Column(
            children: [
              gapHeight(size: 20),
              Expanded(
                flex: 2,
                // height: 200,
                // width: double.infinity,
                // color: Colors.black,
                child: PageView.builder(
                  controller: _controller1,
                  itemCount: image.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex1 = index;
                      _controller2.jumpToPage(index);
                    });
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(20.r),
                      // margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        //color: Colors.red,
                        borderRadius: BorderRadius.circular(20.r),
                        image: DecorationImage(
                          image: AssetImage(image[index]),
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                // color: Colors.red,
                height: 35.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      image.length,
                      (index) => CircleAvatar(
                            radius: 14.r,
                            backgroundColor: _currentPageIndex1 == index
                                ? kPrimaryColor
                                : kBgColor,
                            child: CircleAvatar(
                              radius: 11.r,
                              backgroundColor: const Color(0xffF5F5F5),
                              child: CircleAvatar(
                                radius: 8.r,
                                backgroundColor: _currentPageIndex1 == index
                                    ? kPrimaryColor
                                    : Colors.grey,
                              ),
                            ),
                          )),
                ),
              ),
              Expanded(
                flex: 1,
                child: PageView.builder(
                  controller: _controller2,
                  itemCount: image.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex2 = index;
                      _controller1.jumpToPage(index);
                    });
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: textWidget[index],
                    );
                  },
                ),
              ),
              CustomButton(
                text: "GET STARTED",
                ontap: () {
                  Navigator.push(
                      context, SlideLeftRoute(page: const LocationScreen()));
                },
              ),
              gapHeight(size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
