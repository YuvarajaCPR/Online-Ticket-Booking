import 'package:flutter/material.dart';
import 'package:online_booking_app/utils/Constants.dart';
import 'package:online_booking_app/utils/colors.dart';
import 'package:online_booking_app/utils/common_method.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/login';
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
                      height: getHeightOfDevice(context, 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextField(
                            style: TextStyle(fontSize: getFontOfDevice(context, 5), color: Colors.black,
                                fontFamily: mediumFont),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Phone No or Email Id',
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
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: getHeightOfDevice(context, 5),
                            alignment: AlignmentDirectional.topStart,
                            padding: EdgeInsets.only(left: 15),
                            child:Text(
                              'Login with OTP',
                              style: TextStyle(
                                  fontSize: getFontOfDevice(context, 4.5),
                                  color: Colors.black45
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: getWidthOfDevice(context, 85),
                            child: FlatButton(
                              child: Text(
                                'Sign In',
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
                                Navigator.of(context).pushNamed(homePageRoute);
                              },
                            ),
                          ),
                          SizedBox(
                            height: getHeightOfDevice(context, 3),
                          ),
                          Container(
                            height: getHeightOfDevice(context, 5),
                            child:Text(
                              'Forgot Password? ',
                              style: TextStyle(
                                  fontSize: getFontOfDevice(context, 4.5),
                                  color: Colors.black54
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      //color: Colors.amber,
                      height: getHeightOfDevice(context, 10),
                      alignment: AlignmentDirectional.center,
                      child: Container(
                        height: getHeightOfDevice(context, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Haven\'t any account? ',
                              style: TextStyle(
                                  fontSize: getFontOfDevice(context, 4),
                                  color: Colors.black54
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed(createAccountRoute);
                              },
                              child: Text(
                                'Create an account',
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
