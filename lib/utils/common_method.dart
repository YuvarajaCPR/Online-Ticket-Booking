

import 'package:flutter/widgets.dart';

double getWidthOfDevice(context, val){
 return MediaQuery.of(context).size.width*(val/100);
}

double getHeightOfDevice(context, val){
  return MediaQuery.of(context).size.height*(val/100);
}

double getFontOfDevice(context, val){
  return MediaQuery.of(context).size.width*(val/100);
}