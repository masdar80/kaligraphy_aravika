import 'package:flutter/material.dart';
import 'package:fluttergesture/Diwani.dart';
import 'package:fluttergesture/Diwani_jali.dart';
import 'package:fluttergesture/GenericFont.dart';
import 'package:fluttergesture/Letters.dart';
import 'package:fluttergesture/Naskh.dart';
import 'package:fluttergesture/Tholoth.dart';
import 'package:fluttergesture/farsi.dart';

import 'package:fluttergesture/login.dart';
//import 'file:///F:/flutter/Projects/raqeem_app/lib/components/endPoint.dart';
import 'package:fluttergesture/temp/CanvasPainting.dart';
import 'components/DrawPage.dart';
import 'Ruqaa.dart';
import 'Purchase.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'HomePage.dart';
import 'InAppPurchase.dart';
import 'components/GetImage.dart';
import 'package:flutter/services.dart';

import 'components/endPoint.dart';

void main() {
  InAppPurchaseConnection.enablePendingPurchases();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);*/
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RaQeem',
        theme: ThemeData(

          primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Categories(),
       // home:CanvasPainting(),
        //LogIn(),
        // home :PaintPage(),
        // home: Categories(),
        // home: PaurchasesInApp(),
        //home: GetImage(),
        routes: {
          'homepage': (context) {
            return Categories();
          },
          'ruqaa': (context) {
            //return Ruqaa();
            return GenericFont("ruqaa");
          },
          'diwani': (context) {
           // return Diwani();
            return GenericFont("diwani");
          },
          'diwani_jali': (context) {
           // return Diwani_jali();
            return GenericFont("diwani_jali");
          },
          'farsi': (context) {
            //return farsi();
            return GenericFont("farsi");
          },
          'naskh': (context) {
            //return Naskh();
            return GenericFont("naskh");
          },
          'tholoth': (context) {
            //return Tholoth();
            return GenericFont("tholoth");
          },
          'endPoint': (context) {
            return endPoint();
          },
          'purchase': (context) {
            return Purchases();
          },
          'letters': (context) {
            return Letters();
          },
        }
    );
  }
}

