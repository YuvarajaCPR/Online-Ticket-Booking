

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_booking_app/utils/Constants.dart';
import 'package:online_booking_app/utils/colors.dart';
import 'package:online_booking_app/utils/common_method.dart';
import 'package:online_booking_app/widgets/home_wave_clipper.dart';
import 'package:online_booking_app/widgets/slider_wave_clipper.dart';

class VisaBooking  extends StatefulWidget{
  @override
  VisaBookingState createState() => VisaBookingState();
}
class VisaBookingState extends State<VisaBooking> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<String> listOfVisaDetails = new List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    listOfVisaDetails = new List();
    listOfVisaDetails.add( 'eVisa Application' );
    listOfVisaDetails.add('Applicant Details');
    listOfVisaDetails.add('Passport Details');
    listOfVisaDetails.add('Applicant Address Details');
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

          getVisaBooking(),

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

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  Widget getVisaBooking(){
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return Align(
          alignment: AlignmentDirectional.center,
          child: Container(
            height: getHeightOfDevice(context, 90),
            width: getWidthOfDevice(context, 95),
            child: SingleChildScrollView(
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
                            InkWell(
                               onTap: (){
                                 Navigator.of(context).pop();
                               },
                                child: Icon(Icons.arrow_back_ios, color: Colors.white,size: 17,)),
                            SizedBox(
                              width: getWidthOfDevice(context, 5),
                            ),
                            Text(
                              'Applying for Dubai Visa',
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
                        child: Icon(Icons.info_outline, color: Colors.white, size: 25,),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getHeightOfDevice(context, 3),
                  ),
                  Container(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      listOfVisaDetails[_currentPage],
                      style: TextStyle(
                          fontSize: getFontOfDevice(context, 4.7),
                          fontFamily: mediumFont,
                          fontWeight: FontWeight.w700,
                          color:Colors.white
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeightOfDevice(context, 2),
                  ),
                  Container(
                    width: getWidthOfDevice(context, 80),
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: _buildDots(),
                    ),
                  ),
                  SizedBox(
                    height: getHeightOfDevice(context, 5),
                  ),
                  Container(
                    height: getHeightOfDevice(context, 57),
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: listOfVisaDetails.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                  ),
                  SizedBox(
                    height: getHeightOfDevice(context, 2),
                  ),
                  Container(
                    height: getHeightOfDevice(context, 7),
                    padding: EdgeInsets.only(left: getWidthOfDevice(context, 10), right: getWidthOfDevice(context, 10)),
                    child: FlatButton(
                      child: Text(
                        _currentPage == listOfVisaDetails.length -1 ?'Continue to Pay': 'Continue',
                        style: TextStyle(
                            fontSize: getFontOfDevice(context, 5),
                            fontFamily: mediumFont,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(color: appRegularColor, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: appRegularColor,
                      padding: const EdgeInsets.all(15),
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          if( _currentPage == listOfVisaDetails.length-1 ){
                            _currentPage = 0;
                            _pageController.animateToPage(
                              _currentPage,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOutBack,
                            );
                          }else{
                            _currentPage = _currentPage+1;
                            _pageController.animateToPage(
                              _currentPage,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInToLinear,
                            );
                          }

                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _buildDots() {
    var wids = <Widget>[];
    listOfVisaDetails.asMap().forEach((i, text) {
      var circleColor = (i == 0 || _currentPage >= i )
          ? Colors.white
          : Colors.white54;

      var lineColor = _currentPage > i
          ? Colors.white
          : Colors.white54;

      wids.add(CircleAvatar(
        radius: 8,
        backgroundColor: circleColor,
      ));

      //add a line separator
      //0-------0--------0
      if (i != listOfVisaDetails.length - 1) {
        wids.add(
            Expanded(
                child: Container(height: 4.0, color: lineColor,)
            )
        );
      }
    });

    return wids;
  }
  Widget getAstericHint(hint){
    return Container(
      width: getWidthOfDevice(context, 65),
      child: RichText(
          text: TextSpan(
              text: hint,
              style: TextStyle(
                  fontSize: getFontOfDevice(context, 4.3), color: Colors.black54),
              children:
              [
                TextSpan(
                  text:' *',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getFontOfDevice(context, 4.5)),
                ),                                           ]
          )),
    );
  }

  Widget SlideItem(position){

    return Padding(
      padding: EdgeInsets.only(left: getWidthOfDevice(context, 7), right: getWidthOfDevice(context, 7), bottom: getHeightOfDevice(context, 1)),
      child: Container(
        height: getHeightOfDevice(context, 50),
        width: getWidthOfDevice(context, 55),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [new BoxShadow(
              color: Colors.blueGrey[100],
              blurRadius: 3.0,
            ),]
        ),
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: getHeightOfDevice(context, 1),
                ),
                Container(
                  //«width: getWidthOfDevice(context, 80),
                  child: new DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down),
                    style: TextStyle(
                        color: Colors.black
                    ),
                    underline: Container(
                      width: getWidthOfDevice(context, 70),
                      color: Colors.black54,
                      height: 1,
                    ),
                    hint: getAstericHint('Passport Type', ),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),

                Container(
                  //«width: getWidthOfDevice(context, 80),
                  child: new DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down),
                    style: TextStyle(
                        color: Colors.black
                    ),
                    underline: Container(
                      width: getWidthOfDevice(context, 70),
                      color: Colors.black54,
                      height: 1,
                    ),
                    hint: getAstericHint('Nationality', ),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),

                Container(
                  child: new DropdownButton<String>(
                    icon: Icon(Icons.date_range_sharp),
                    style: TextStyle(
                        color: Colors.black
                    ),
                    underline: Container(
                      width: getWidthOfDevice(context, 70),
                      color: Colors.black54,
                      height: 1,
                    ),
                    hint: getAstericHint('Date of Birth', ),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value, style: TextStyle(fontSize: getFontOfDevice(context, 4.5), color: Colors.black,
                            fontFamily: mediumFont),),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
                Container(
                  width: getWidthOfDevice(context, 70),
                  child: TextField(
                    style: TextStyle(fontSize: getFontOfDevice(context, 4.2), color: Colors.black,
                        fontFamily: mediumFont),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email Id',
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeightOfDevice(context, 1),
                ),
                Container(
                  //«width: getWidthOfDevice(context, 80),
                  child: new DropdownButton<String>(
                    icon: Icon(Icons.date_range_sharp),
                    style: TextStyle(
                        color: Colors.black
                    ),
                    underline: Container(
                      width: getWidthOfDevice(context, 70),
                      color: Colors.black54,
                      height: 1,
                    ),
                    hint: getAstericHint('Date of Arrival', ),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value, style: TextStyle(fontSize: getFontOfDevice(context, 4.5), color: Colors.black,
                            fontFamily: mediumFont),),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
                SizedBox(
                  height: getHeightOfDevice(context, 1),
                ),
                Container(
                  width: getWidthOfDevice(context, 70),
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Visa Service', style: TextStyle(fontSize: getFontOfDevice(context, 4), color: Colors.black,
                      fontFamily: mediumFont),),
                ),
                SizedBox(
                  height: getHeightOfDevice(context, 1),
                ),
                Container(
                  width: getWidthOfDevice(context, 70),
                  //height: getHeightOfDevice(context, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: getWidthOfDevice(context, 35),
                          padding: EdgeInsets.all(0),
                          child: Row(children: [
                            Container(
                              width: getWidthOfDevice(context, 4),
                              height: getWidthOfDevice(context, 4),
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: getWidthOfDevice(context, 3),
                            ),
                            Text('eBusiness', style: TextStyle(fontSize: getFontOfDevice(context, 3.8), color: Colors.black,
                                fontFamily: mediumFont),),
                          ],)
                      ),

                      Container(
                          width: getWidthOfDevice(context, 35),
                          padding: EdgeInsets.all(0),
                          child: Row(children: [
                            Container(
                              width: getWidthOfDevice(context, 4),
                              height: getWidthOfDevice(context, 4),
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: getWidthOfDevice(context, 3),
                            ),
                            Text('eTourist', style: TextStyle(fontSize: getFontOfDevice(context, 3.8), color: Colors.black,
                                fontFamily: mediumFont),),
                          ],)
                      ),

                    ],
                  ),

                ),
                SizedBox(
                  height: getHeightOfDevice(context, 3),
                ),
                Container(
                    width: getWidthOfDevice(context, 70),
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: getWidthOfDevice(context, 4),
                          height: getWidthOfDevice(context, 4),
                          alignment: AlignmentDirectional.topStart,
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        SizedBox(
                          width: getWidthOfDevice(context, 3),
                        ),
                        Container(
                          width: getWidthOfDevice(context, 63),
                          child: Text('I have Read the instruction, if someone gives a gift and another receives accepted the gift',
                            style: TextStyle(fontSize: getFontOfDevice(context, 3.8), color: Colors.black,
                              fontFamily: mediumFont),),
                        ),
                      ],)
                ),
              ],
            )),
      ),
    );
    if( position == 0 ){
    //eVisa Application
      return Padding(
        padding: EdgeInsets.only(left: getWidthOfDevice(context, 7), right: getWidthOfDevice(context, 7), bottom: getHeightOfDevice(context, 1)),
        child: Container(
          height: getHeightOfDevice(context, 50),
          width: getWidthOfDevice(context, 55),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [new BoxShadow(
                color: Colors.blueGrey[100],
                blurRadius: 3.0,
              ),]
          ),
          child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: getHeightOfDevice(context, 1),
                  ),
                  Container(
                    //«width: getWidthOfDevice(context, 80),
                    child: new DropdownButton<String>(
                      icon: Icon(Icons.keyboard_arrow_down),
                      style: TextStyle(
                        color: Colors.black
                      ),
                      underline: Container(
                        width: getWidthOfDevice(context, 70),
                        color: Colors.black54,
                        height: 1,
                      ),
                      hint: getAstericHint('Passport Type', ),
                      items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),

                  Container(
                    //«width: getWidthOfDevice(context, 80),
                    child: new DropdownButton<String>(
                      icon: Icon(Icons.keyboard_arrow_down),
                      style: TextStyle(
                          color: Colors.black
                      ),
                      underline: Container(
                        width: getWidthOfDevice(context, 70),
                        color: Colors.black54,
                        height: 1,
                      ),
                      hint: getAstericHint('Nationality', ),
                      items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),

                  Container(
                    child: new DropdownButton<String>(
                      icon: Icon(Icons.date_range_sharp),
                      style: TextStyle(
                          color: Colors.black
                      ),
                      underline: Container(
                        width: getWidthOfDevice(context, 70),
                        color: Colors.black54,
                        height: 1,
                      ),
                      hint: getAstericHint('Date of Birth', ),
                      items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value, style: TextStyle(fontSize: 15, color: Colors.black,
                              fontFamily: mediumFont),),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  Container(
                    width: getWidthOfDevice(context, 70),
                    child: TextField(
                      style: TextStyle(fontSize: 15, color: Colors.black,
                          fontFamily: mediumFont),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Email Id',
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeightOfDevice(context, 1),
                  ),
                  Container(
                    //«width: getWidthOfDevice(context, 80),
                    child: new DropdownButton<String>(
                      icon: Icon(Icons.date_range_sharp),
                      style: TextStyle(
                          color: Colors.black
                      ),
                      underline: Container(
                        width: getWidthOfDevice(context, 70),
                        color: Colors.black54,
                        height: 1,
                      ),
                      hint: getAstericHint('Date of Arrival', ),
                      items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value, style: TextStyle(fontSize: 15, color: Colors.black,
                              fontFamily: mediumFont),),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  SizedBox(
                    height: getHeightOfDevice(context, 1),
                  ),
                  Container(
                    width: getWidthOfDevice(context, 70),
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Visa Service', style: TextStyle(fontSize: 15, color: Colors.black,
                        fontFamily: mediumFont),),
                  ),
                  SizedBox(
                    height: getHeightOfDevice(context, 1),
                  ),
                  Container(
                    width: getWidthOfDevice(context, 70),
                    //height: getHeightOfDevice(context, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getWidthOfDevice(context, 35),
                          padding: EdgeInsets.all(0),
                          child: Row(children: [
                            Container(
                              width: getWidthOfDevice(context, 4),
                              height: getWidthOfDevice(context, 4),
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1),
                               borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: getWidthOfDevice(context, 3),
                            ),
                            Text('eBusiness', style: TextStyle(fontSize: 15, color: Colors.black,
                                fontFamily: mediumFont),),
                          ],)
                        ),

                        Container(
                            width: getWidthOfDevice(context, 35),
                            padding: EdgeInsets.all(0),
                            child: Row(children: [
                              Container(
                                width: getWidthOfDevice(context, 4),
                                height: getWidthOfDevice(context, 4),
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(
                                width: getWidthOfDevice(context, 3),
                              ),
                              Text('eTourist', style: TextStyle(fontSize: 15, color: Colors.black,
                                  fontFamily: mediumFont),),
                            ],)
                        ),

                      ],
                    ),

                  ),
                  SizedBox(
                    height: getHeightOfDevice(context, 3),
                  ),
                  Container(
                      width: getWidthOfDevice(context, 70),
                      padding: EdgeInsets.all(0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Container(
                          width: getWidthOfDevice(context, 4),
                          height: getWidthOfDevice(context, 4),
                          alignment: AlignmentDirectional.topStart,
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        SizedBox(
                          width: getWidthOfDevice(context, 3),
                        ),
                        Container(
                          width: getWidthOfDevice(context, 63),
                          child: Text('I have Read the instruction, if someone gives a gift and another receives it, then they have accepted the gift', style: TextStyle(fontSize: 15, color: Colors.black,
                              fontFamily: mediumFont),),
                        ),
                      ],)
                  ),
                ],
          )),
        ),
      );
    }else if( position == 1 ){
     //Application Detail
      return Container(
        height: getHeightOfDevice(context, 70),

      );
    }else if( position == 2 ){
      //Passport Detail
      return Container(
        height: getHeightOfDevice(context, 80),

      );
    }else{
      //Address details
      return Container(
        height: getHeightOfDevice(context, 80),

      );
    }
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

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
