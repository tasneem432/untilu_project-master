import 'package:flutter/material.dart';
import '../../helpers/constants/constants.dart';
import '../../widgets/orders_card.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
          "My Orders",
          style: kHeadingTextStyle.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kdefaultPadding,
        ),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const OrderCard();
          },
        ),
      ),
    );
  }
}
