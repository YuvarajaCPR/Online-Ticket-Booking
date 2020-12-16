import 'package:flutter/material.dart';
import 'package:online_booking_app/utils/Constants.dart';
import 'package:online_booking_app/utils/colors.dart';
import 'package:online_booking_app/utils/common_method.dart';

class CreateAccount extends StatelessWidget {
  static const routeName = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Login'),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,size: 17),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            color: Colors.white,
            width: double.infinity,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/logo.png',
                      height: getHeightOfDevice(context, 15),
                    ),
                    SizedBox(
                      height: getHeightOfDevice(context, 5),
                    ),
                    Container(
                      height: getHeightOfDevice(context, 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextField(
                            style: TextStyle(fontSize: getFontOfDevice(context, 5), color: Colors.black,
                                fontFamily: mediumFont),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Name',
                              contentPadding: const EdgeInsets.all(15),
                              /*focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),*/
                              /*enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),*/
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(fontSize: getFontOfDevice(context, 5), color: Colors.black,
                                fontFamily: mediumFont),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Phone No',
                              suffixText: '*',
                              suffixStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 22
                              ),
                              contentPadding: const EdgeInsets.all(15),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(fontSize: getFontOfDevice(context, 5), color: Colors.black,
                                fontFamily: mediumFont),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Email Id',
                              suffixText: '*',
                              suffixStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 22
                              ),
                              contentPadding: const EdgeInsets.all(15),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(fontSize: getFontOfDevice(context, 5), color: Colors.black,
                                fontFamily: mediumFont),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
                              contentPadding: const EdgeInsets.all(15),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      //color: Colors.amber,
                      height: getHeightOfDevice(context, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: getWidthOfDevice(context, 85),
                            child: FlatButton(
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                  fontSize: getFontOfDevice(context, 5),
                                ),
                              ),
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(color: appRegularColor, width: 2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.all(15),
                              textColor: Colors.white,
                              color: appRegularColor,
                              onPressed: () {
                                Navigator.of(context).pushNamed(signInRoute);
                              },
                            ),
                          ),
                          SizedBox(
                            height: getHeightOfDevice(context, 3),
                          ),
                          Container(
                            height: getHeightOfDevice(context, 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Already have an account? ',
                                  style: TextStyle(
                                    fontSize: getFontOfDevice(context, 4),
                                    color: Colors.black54
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.of(context).pushNamed(signInRoute);
                                  },
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontSize: getFontOfDevice(context, 4.2),
                                        fontFamily: mediumFont,
                                        fontWeight: FontWeight.w700,
                                        color:appRegularColor
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
