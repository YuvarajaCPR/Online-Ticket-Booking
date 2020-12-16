import 'package:flutter/material.dart';
import 'package:online_booking_app/utils/colors.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 15 : 15,
      width: isActive ? 15 : 15,
      decoration: BoxDecoration(
        color: isActive ? appRegularColor : appLightColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}