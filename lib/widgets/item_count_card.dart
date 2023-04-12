import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gireeb/helpers/constants/constants.dart';
import 'package:gireeb/helpers/responsive/size_config.dart';

class ItemCountCard extends StatefulWidget {
  final double height;
  final double width;
  const ItemCountCard({super.key, required this.height, required this.width});

  @override
  State<ItemCountCard> createState() => _ItemCountCardState();
}

class _ItemCountCardState extends State<ItemCountCard> {
  int number = 0;

  void incrementNumber() {
    setState(() {
      number++;
    });
  }

  void decrementNumber() {
    setState(() {
      if (number > 0) {
        number--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: widget.height.h,
        width: widget.width.w,
        child: Row(
          mainAxisAlignment: mainCenter,
          children: [
            InkWell(
              onTap: () {
                decrementNumber();
              },
              child: const Icon(Icons.remove),
            ),
            gapWidth(size: 5),
            Text('$number'),
            gapWidth(size: 5),
            InkWell(
                onTap: () {
                  incrementNumber();
                },
                child: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
