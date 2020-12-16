import 'package:flutter/material.dart';
import 'package:online_booking_app/utils/Constants.dart';
import 'package:online_booking_app/utils/colors.dart';
import 'package:online_booking_app/utils/common_method.dart';
import 'package:online_booking_app/widgets/Slider_wave_clipper.dart';
import 'package:online_booking_app/widgets/slider_wave_clipper_2.dart';

import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    double halfHeight = getHeightOfDevice(context, 50);
    return Stack(
      children: [
        Container(
            height: getHeightOfDevice(context, 60),
            width: getWidthOfDevice(context, 100),
            //color: Colors.amber,
            child: ClipPath(
              child: Container(
                color: appRegularColor,
              ),
              clipper: SliderWaveClipper2(),
            )
        ),
        Container(
            height: getHeightOfDevice(context, 55),
            width: getWidthOfDevice(context, 100),
            //color: Colors.amber,
            child: ClipPath(
              child: Image.asset('assets/images/image3.jpg'),
              clipper: SliderWaveClipper(),
            )
        ),


        Container(
          padding: EdgeInsets.only(top: halfHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Text(
                slideList[index].title,
                style: TextStyle(
                  fontSize: getFontOfDevice(context, 6),
                  color: appRegularColor,
                  fontFamily: mediumFont,
                  fontWeight: FontWeight.w800
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                slideList[index].description,
                style: TextStyle( fontFamily: mediumFont,color: Colors.black, fontSize: getFontOfDevice(context, 5)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
