import 'package:flutter/material.dart';
import 'package:flutter_girlie_store/UserScreens/about_us.dart';
import 'package:flutter_girlie_store/UserScreens/cart.dart';
import 'package:flutter_girlie_store/UserScreens/delivery_address.dart';
import 'package:flutter_girlie_store/UserScreens/favourites.dart';
import 'package:flutter_girlie_store/UserScreens/history.dart';
import 'package:flutter_girlie_store/UserScreens/itemDetails.dart';
import 'package:flutter_girlie_store/UserScreens/loginlogout.dart';
import 'package:flutter_girlie_store/UserScreens/messages.dart';
import 'package:flutter_girlie_store/UserScreens/notifications.dart';
import 'package:flutter_girlie_store/UserScreens/profile.dart';
import 'UserScreens/myHomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => MyHomePage(),
    '/favourites':(context) => Girliefavourites(),
    '/messages':(context) => Messages(),
    '/cart':(context) => GirlieCart(),
    '/about':(context) => GirlieAboutUs(),
    '/history':(context) => GirlieHistory(),
    '/address':(context) => GirlieDeliveryAddress(),
    '/notifications':(context) => GirlieNotifications(),
    '/profile':(context) => GirlieProfile(),
    '/login': (context) => LoginLogout(),
    '/itemDetails':(context) => ItemDetails(),

  },
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Girlies',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(),
    );

  }
}
