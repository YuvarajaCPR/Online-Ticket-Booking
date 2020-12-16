import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_booking_app/screens/HomePage.dart';
import 'package:online_booking_app/screens/getting_started_screen.dart';
import 'package:online_booking_app/screens/login_home_page.dart';
import 'package:online_booking_app/screens/signin_screen.dart';
import 'package:online_booking_app/screens/create_account.dart';
import 'package:online_booking_app/screens/visa_booking.dart';
import 'package:online_booking_app/utils/Constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GettingStartedScreen(),
      routes: {
        createAccountRoute: (ctx) => CreateAccount(),
        signInRoute: (ctx) => SignInPage(),
        loginHomeRoute: (ctx) => LoginHome(),
        homePageRoute: (ctx) => HomePage(),
        visaBookingRoute: (ctx) => VisaBooking(),

      },
    );
  }
}
