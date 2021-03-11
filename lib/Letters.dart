import 'package:flutter/material.dart';
import 'components/DrawPage.dart';
import 'components/Settings.dart';
import 'components/drawer.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'components/options.dart' as op_menu;

class Letters extends StatefulWidget {
  @override
  _LettersState createState() => _LettersState();
}

class _LettersState extends State<Letters> {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;

  @override
  Widget build(BuildContext context) {
    Setting.setselectedSubNot("letters");
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    if (screenWidth < screenHeight) screenHeight = screenHeight * 0.50;
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
              tabsWidth: screenWidth / 7.75,
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
                          "img/subcat/ruqaa/01_All buttons_02.png",
                          //fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ر",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("6");

                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "د",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("5");
                              Setting.user_path+="_5";
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ج",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("4");
                              Setting.user_path+="_4";
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ت",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("3");
                              Setting.user_path+="_3";
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ب",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("2");
                              Setting.user_path+="_2";
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "أ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("1");
                              Setting.user_path+="_1";
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ع",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("12");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ط",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("11");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ض",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("10");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ص",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("9");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ش",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("8");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "س",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("7");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "لا",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("18");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ل",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("17");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ك2",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("16");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ك",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("15");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ق",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("14");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ف",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("13");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ي",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("24");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "و",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("23");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ه",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("22");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ن2",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("21");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ن",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("20");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "م",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("19");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "ء",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("26");
                              Navigator.of(context).pushNamed("endPoint");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 14,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 15,
                                  screenHeight / 90, 0, screenHeight / 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Text(
                                "يــ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100),
                              ),
                            ),
                            onTap: () {
                              Setting.setLastLetter("25");
                              Navigator.of(context).pushNamed("endPoint");
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
