

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_booking_app/utils/Constants.dart';
import 'package:online_booking_app/utils/colors.dart';
import 'package:online_booking_app/utils/common_method.dart';
import 'package:online_booking_app/widgets/home_wave_clipper.dart';
import 'package:online_booking_app/widgets/slider_wave_clipper.dart';

class HomePage  extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              height: getHeightOfDevice(context, 60),
              width: getWidthOfDevice(context, 100),
              //color: Colors.amber,
              child: ClipPath(
                child: Container(
                  color: appRegularColor,
                ),
                clipper: HomeWaveClipper(),
              )
          ),

          getHomePage(),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavigationBar,
          ),
        ],
      ),
    );
  }

  Widget getHomePage(){
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return Align(
          alignment: AlignmentDirectional.center,
          child: Container(
            height: getHeightOfDevice(context, 90),
            width: getWidthOfDevice(context, 90),
            child: SingleChildScrollView(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(visaBookingRoute);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          width: getWidthOfDevice(context, 70),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.menu, color: Colors.white,),
                              SizedBox(
                                width: getWidthOfDevice(context, 5),
                              ),
                              Text(
                                'Hello UserName',
                                style: TextStyle(
                                    fontSize: getFontOfDevice(context, 5),
                                    fontFamily: mediumFont,
                                    fontWeight: FontWeight.w700,
                                    color:Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getWidthOfDevice(context, 20),
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Icon(Icons.date_range_sharp, color: Colors.white, size: getFontOfDevice(context, 7),),
                        )
                      ],
                    ),
                    SizedBox(
                      height: getHeightOfDevice(context, 5),
                    ),
                    Container(
                      height: getHeightOfDevice(context, 30),
                      width: getWidthOfDevice(context, 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: getWidthOfDevice(context, 40),
                            child: Column(
                              children: [
                                Container(
                                  width: getWidthOfDevice(context, 37),
                                  height: getHeightOfDevice(context, 18),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [new BoxShadow(
                                          color: Colors.blueGrey[100],
                                          blurRadius: 3.0,
                                        ),]
                                    ),
                                  child:Icon(Icons.book, color: appRegularColor, size: getWidthOfDevice(context, 22),)
                                ),
                                SizedBox(
                                  height: getHeightOfDevice(context, 1),
                                ),
                                Text(
                                  'Visa & Government Check',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: getFontOfDevice(context, 4.5),
                                      fontFamily: mediumFont,
                                      fontWeight: FontWeight.w700,
                                      color:Colors.black
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getWidthOfDevice(context, 7),
                          ),
                          Container(
                            width: getWidthOfDevice(context, 40),
                            child: Column(
                              children: [
                                Container(
                                    width: getWidthOfDevice(context, 37),
                                    height: getHeightOfDevice(context, 18),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [new BoxShadow(
                                          color: Colors.blueGrey[100],
                                          blurRadius: 3.0,
                                        ),]
                                    ),
                                    child:Icon(Icons.timer, color: appRegularColor, size: getWidthOfDevice(context, 22),)
                                ),
                                SizedBox(
                                  height: getHeightOfDevice(context, 1),
                                ),
                                Text(
                                  'Health Care Service',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: getFontOfDevice(context, 4.5),
                                      fontFamily: mediumFont,
                                      fontWeight: FontWeight.w700,
                                      color:Colors.black
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: getHeightOfDevice(context, 30),
                      width: getWidthOfDevice(context, 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: getWidthOfDevice(context, 40),
                            child: Column(
                              children: [
                                Container(
                                    width: getWidthOfDevice(context, 37),
                                    height: getHeightOfDevice(context, 18),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [new BoxShadow(
                                          color: Colors.blueGrey[100],
                                          blurRadius: 3.0,
                                        ),]
                                    ),
                                    child:Icon(Icons.fact_check_sharp, color: appRegularColor, size: getWidthOfDevice(context, 22),)
                                ),
                                SizedBox(
                                  height: getHeightOfDevice(context, 1),
                                ),
                                Text(
                                  'Air Ticket booking',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: getFontOfDevice(context, 4.5),
                                      fontFamily: mediumFont,
                                      fontWeight: FontWeight.w700,
                                      color:Colors.black
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getWidthOfDevice(context, 7),
                          ),
                          Container(
                            width: getWidthOfDevice(context, 40),
                            child: Column(
                              children: [
                                Container(
                                    width: getWidthOfDevice(context, 37),
                                    height: getHeightOfDevice(context, 18),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [new BoxShadow(
                                          color: Colors.blueGrey[100],
                                          blurRadius: 3.0,
                                        ),]
                                    ),
                                    child:Icon(Icons.lock_clock, color: appRegularColor, size: getWidthOfDevice(context, 22),)
                                ),
                                SizedBox(
                                  height: getHeightOfDevice(context, 1),
                                ),
                                Text(
                                  'Health Care Service',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: getFontOfDevice(context, 4.5),
                                      fontFamily: mediumFont,
                                      fontWeight: FontWeight.w700,
                                      color:Colors.black
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getHeightOfDevice(context, 30),
                      width: getWidthOfDevice(context, 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: getWidthOfDevice(context, 40),
                            child: Column(
                              children: [
                                Container(
                                    width: getWidthOfDevice(context, 37),
                                    height: getHeightOfDevice(context, 18),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        //border: Border.all(width: 1, color: Colors.grey),
                                        boxShadow: [new BoxShadow(
                                          color: Colors.grey[200],
                                          blurRadius: 10.0,
                                        ),]
                                    ),
                                    child:Icon(Icons.wrong_location, color: appRegularColor, size: getWidthOfDevice(context, 22),)
                                ),
                                SizedBox(
                                  height: getHeightOfDevice(context, 1),
                                ),
                                Text(
                                  'Visa & Government Check',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: getFontOfDevice(context, 4.5),
                                      fontFamily: mediumFont,
                                      fontWeight: FontWeight.w700,
                                      color:Colors.black
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getWidthOfDevice(context, 7),
                          ),
                          Container(
                            width: getWidthOfDevice(context, 40),
                            child: Column(
                              children: [
                                Container(
                                    width: getWidthOfDevice(context, 37),
                                    height: getHeightOfDevice(context, 18),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [new BoxShadow(
                                          color: Colors.blueGrey[100],
                                          blurRadius: 3.0,
                                        ),]
                                    ),
                                    child:Icon(Icons.ac_unit_sharp, color: appRegularColor, size: getWidthOfDevice(context, 22),)
                                ),
                                SizedBox(
                                  height: getHeightOfDevice(context, 1),
                                ),
                                Text(
                                  'Health Care Service',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: getFontOfDevice(context, 4.5),
                                      fontFamily: mediumFont,
                                      fontWeight: FontWeight.w700,
                                      color:Colors.black
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
  Widget get bodyContent {
    return Container(color: Colors.white);
  }

  Widget get bottomNavigationBar {
    return Container(
      height: getHeightOfDevice(this.context, 8),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white,), title: Text('Home',style: TextStyle(fontSize: getFontOfDevice(context, 3), color: Colors.white,
                fontFamily: mediumFont),), backgroundColor: appRegularColor),
            BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.white,), title: Text('Notification',style: TextStyle(fontSize: getFontOfDevice(context, 3), color: Colors.white,
      fontFamily: mediumFont),)),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on_rounded,color: Colors.white,), title: Text('Appointment',style: TextStyle(fontSize: getFontOfDevice(context, 3), color: Colors.white,
                fontFamily: mediumFont),)),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded, color: Colors.white,), title: Text('Account',style: TextStyle(fontSize: getFontOfDevice(context, 3)
                , color: Colors.white,
                fontFamily: mediumFont),)),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: appRegularColor,
          showUnselectedLabels: true,
          //showSelectedLabels: false,
        ),
      ),
    );
  }
}