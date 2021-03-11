import 'package:flutter/material.dart';
import 'package:fluttergesture/components/Settings.dart';

import 'Letters.dart';
import 'components/drawer.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'components/options.dart' as op_menu;

class Ruqaa extends StatefulWidget {
  @override
  _RuqaaState createState() => _RuqaaState();
}

class _RuqaaState extends State<Ruqaa> {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;

  @override
  Widget build(BuildContext context) {
    Setting.setselectedNote("ruqaa");
    Setting.user_path="ruqaa";
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    if(screenWidth<screenHeight)
      screenHeight=screenHeight*0.50;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          /*appBar: AppBar(
            title: Text("خط الرقعة"),
          ),
         drawer: MyDrawer(),*/
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "img/categories/orange_bk.png",
                    ),
                    fit: BoxFit.cover)),
            child: VerticalTabs(
              backgroundColor: Colors.amber,
              tabsWidth: screenWidth/7.75,
              tabs: <Tab>[
                Tab(
                    child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "img/categories/orange_bk.png",
                          ),
                          fit: BoxFit.cover)),
                  child: Image.asset(
                    "img/categories/all_call_up_01.png",
                    fit: BoxFit.fitHeight,
                  ),
                )),
                Tab(
                    child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "img/categories/orange_bk.png",
                          ),
                          fit: BoxFit.cover)),
                  child: Image.asset(
                    "img/categories/options_up_01.png",
                    fit: BoxFit.fitHeight,
                  ),
                )),
              ],
              contents: <Widget>[
                Container(
                  color: Color.fromRGBO(240, 239, 238, 1),
                  //  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  /*width: 1200,
            height: 1300,*/
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: screenHeight / 8.73,
                     //   width: screenWidth / 10.07,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(
                            screenWidth / 48.14,
                            screenHeight / 48.63,
                            screenWidth / 10.53,
                            screenHeight / 48.63),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/subcat/ruqaa/01_All buttons_01.png",
                          //fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Stack(children: <Widget>[
                              Container(
                                height: screenHeight / 4.36,
                                width: screenWidth / 3.04,
                                // padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(
                                    screenWidth / 25.14,
                                    screenHeight / 48.63,
                                    screenWidth / 45.53,
                                    screenHeight / 48.63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  // border: Border.all(color: Colors.black, width: 7),
                                ),

                                child: Image.asset(
                                  "img/subcat/ruqaa/01_All buttons_03.png",
                                ),
                              ),
                              Column(children: <Widget>[
                                //first element in column is the transparent offset
                                Container(
                                  height: screenHeight / 4.67,
                                  width: screenWidth / 6,
                                  margin: EdgeInsets.fromLTRB(
                                      screenWidth / 4, 0, 0, 0),
                                ),
                                Container(
                                  child: Center(
                                    child: Row(
                                      children: [
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_02.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("en");
                                          },
                                        ),
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_01.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("ar");
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ])
                            ]),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Stack(children: <Widget>[
                              Container(
                                height: screenHeight / 4.36,
                                width: screenWidth / 3.04,
                                // padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(
                                    0,
                                    screenHeight / 48.63,
                                    0,
                                    screenHeight / 48.63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  // border: Border.all(color: Colors.black, width: 7),
                                ),

                                child: Image.asset(
                                  "img/subcat/ruqaa/01_All buttons_02.png",
                                ),
                              ),
                              Column(children: <Widget>[
                                //first element in column is the transparent offset
                                Container(
                                  height: screenHeight / 4.67,
                                  width: screenWidth / 6,
                                  margin: EdgeInsets.fromLTRB(
                                      screenWidth / 6, 0, 0, 0),
                                ),
                                Container(
                                  child: Center(
                                    child: Row(
                                      children: [
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_02.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("en");
                                          },
                                        ),
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_01.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("ar");
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ])
                            ]),
                            onTap: () {


                              Navigator.of(context).pushNamed("letters");
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Stack(children: <Widget>[
                              Container(
                                height: screenHeight / 4.36,
                                width: screenWidth / 3.04,
                                // padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(
                                    screenWidth / 25.14,
                                    screenHeight / 48.63,
                                    screenWidth / 45.53,
                                    screenHeight / 48.63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  // border: Border.all(color: Colors.black, width: 7),
                                ),

                                child: Image.asset(
                                  "img/subcat/ruqaa/01_All buttons_05.png",
                                ),
                              ),
                              Column(children: <Widget>[
                                //first element in column is the transparent offset
                                Container(
                                  height: screenHeight / 4.67,
                                  width: screenWidth / 6,
                                  margin: EdgeInsets.fromLTRB(
                                      screenWidth / 4, 0, 0, 0),
                                ),
                                Container(
                                  child: Center(
                                    child: Row(
                                      children: [
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_02.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("en");
                                          },
                                        ),
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_01.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("ar");
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ])
                            ]),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Stack(children: <Widget>[
                              Container(
                                height: screenHeight / 4.36,
                                width: screenWidth / 3.04,
                                // padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(
                                    0,
                                    screenHeight / 48.63,
                                    0,
                                    screenHeight / 48.63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  // border: Border.all(color: Colors.black, width: 7),
                                ),

                                child: Image.asset(
                                  "img/subcat/ruqaa/01_All buttons_04.png",
                                ),
                              ),
                              Column(children: <Widget>[
                                //first element in column is the transparent offset
                                Container(
                                  height: screenHeight / 4.67,
                                  width: screenWidth / 6,
                                  margin: EdgeInsets.fromLTRB(
                                      screenWidth / 6, 0, 0, 0),
                                ),
                                Container(
                                  child: Center(
                                    child: Row(
                                      children: [
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_02.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("en");
                                          },
                                        ),
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_01.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("ar");
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ])
                            ]),
                            onTap: () {
                              Navigator.of(context).pushNamed("ruqaa1");
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Stack(children: <Widget>[
                              Container(
                                height: screenHeight / 4.36,
                                width: screenWidth / 3.04,
                                // padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(
                                    screenWidth / 25.14,
                                    screenHeight / 48.63,
                                    screenWidth / 45.53,
                                    screenHeight / 48.63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  // border: Border.all(color: Colors.black, width: 7),
                                ),

                                child: Image.asset(
                                  "img/subcat/ruqaa/01_All buttons_06.png",
                                ),
                              ),
                              Column(children: <Widget>[
                                //first element in column is the transparent offset
                                Container(
                                  height: screenHeight / 4.67,
                                  width: screenWidth / 6,
                                  margin: EdgeInsets.fromLTRB(
                                      screenWidth / 4, 0, 0, 0),
                                ),
                                Container(
                                  child: Center(
                                    child: Row(
                                      children: [
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_02.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("en");
                                          },
                                        ),
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_01.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("ar");
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ])
                            ]),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Stack(children: <Widget>[
                              Container(
                                height: screenHeight / 4.36,
                                width: screenWidth / 3.04,
                                // padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(
                                    0,
                                    screenHeight / 48.63,
                                    0,
                                    screenHeight / 48.63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  // border: Border.all(color: Colors.black, width: 7),
                                ),

                                child: Image.asset(
                                  "img/subcat/ruqaa/01_All buttons_06.png",
                                ),
                              ),
                              Column(children: <Widget>[
                                //first element in column is the transparent offset
                                Container(
                                  height: screenHeight / 4.67,
                                  width: screenWidth / 6,
                                  margin: EdgeInsets.fromLTRB(
                                      screenWidth / 6, 0, 0, 0),
                                ),
                                Container(
                                  child: Center(
                                    child: Row(
                                      children: [
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_02.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("en");
                                          },
                                        ),
                                        InkWell(
                                          child: Image.asset(
                                            "img/main_buttons_01.png",
                                            height: screenHeight / 13.01,
                                            width: screenWidth / 9.1,
                                          ),
                                          onTap: () {
                                            print("ar");
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ])
                            ]),
                            onTap: () {
                              Navigator.of(context).pushNamed("ruqaa1");
                            },
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                new op_menu.OptionsWidget().getMenu(screenWidth, screenHeight),
              ],
            ),
            /*child: Stack(
              alignment: Alignment.topLeft,
              children: stackChildren,
            ),*/
          ),
        ));
  }
}
