import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants/constants.dart';
import '../helpers/responsive/size_config.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kdefaultPadding),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: kBgColor,
                  boxShadow: const [
                    BoxShadow(
                      color: kShadowColor,
                      offset: Offset(1, 1),
                      blurRadius: 5,
                    )
                  ],
                  image: const DecorationImage(
                      image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.iNUy5HjGkG7SlixixrtPOwHaHa?w=164&h=180&c=7&r=0&o=5&pid=1.7",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              gapWidth(size: 16),
              Expanded(
                child: SizedBox(
                  height: 80,
                  //color: Colors.red,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "M14 Cafe - Ai Burairat",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: kTitleTextstyle.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
          gapHeight(size: 16),
          Text(
            "Self Pickup",
            style: kTitleTextstyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: kGreenColor,
            ),
          ),
          gapHeight(size: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Date: 31 Mar 2023 11:41 PM",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: kTitleTextstyle.copyWith(
                    color: kSecounderyTextColor,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kdefaultPadding, vertical: kdefaultPadding / 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: kLightGreenColor,
                ),
                child: Center(
                  child: Text(
                    "Deliverd",
                    style: kTitleTextstyle.copyWith(
                      color: kGreenColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          Text(
            "Order# OD202390234161774",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: kTitleTextstyle.copyWith(
              color: kSecounderyTextColor,
            ),
          )
        ],
      ),
    );
  }
}
