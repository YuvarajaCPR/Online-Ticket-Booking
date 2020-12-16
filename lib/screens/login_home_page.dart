import 'package:flutter/material.dart';
import 'package:online_booking_app/utils/Constants.dart';
import 'package:online_booking_app/utils/colors.dart';
import 'package:online_booking_app/utils/common_method.dart';

class LoginHome extends StatelessWidget {
  static const routeName = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/logo.png',
                      height: 130,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Create an free account',
                        style: TextStyle(
                            fontSize: getFontOfDevice(context, 6),
                            color: Colors.black,
                            fontFamily: mediumFont,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    FlatButton(
                      child: Text(
                        'Create an account',
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
                        Navigator.of(context).pushNamed(createAccountRoute);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: getFontOfDevice(context, 5),
                            fontFamily: mediumFont,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(color: appRegularColor, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      //color: appRegularColor,
                      padding: const EdgeInsets.all(15),
                      textColor: appRegularColor,
                      onPressed: () {
                        Navigator.of(context).pushNamed(signInRoute);
                      },
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
