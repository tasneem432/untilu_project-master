import 'package:flutter/material.dart';
import '../helpers/constants/constants.dart';
import '../helpers/responsive/size_config.dart';

class PaymentSummaryCard extends StatelessWidget {
  final String firstText;
  final String endText;
  final Color textColor;

  const PaymentSummaryCard({
    super.key,
    required this.firstText,
    required this.endText,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kdefaultPadding / 2),
      child: Row(
        mainAxisAlignment: mainSpaceBetween,
        children: [
          Expanded(
            child: Text(
              firstText,
              style: kTitleTextstyle.copyWith(color: textColor),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                endText,
                style: kTitleTextstyle.copyWith(color: textColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
