import 'package:flutter/material.dart';
import 'components/drawer.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'components/options.dart' as op_menu;

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Widget menu;
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  Widget settinmenu;

  List<Widget> stackChildren = [];
  var flag = 1;

  void swapStackChildren() {
    setState(() {
      if (flag == 1) {
        stackChildren = [
          menu,
          settinmenu,
        ];
        flag = 2;
      } else {
        flag = 1;
        stackChildren = [
          settinmenu,
          menu,
        ];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    print("Screen Width:");
    print(screenWidth);
    print("Screen Height:");
    print(screenHeight);
    if(screenWidth<screenHeight)
      screenHeight=screenHeight*0.50;
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          drawer: MyDrawer(),
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
                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: screenHeight/3.75,
                              width: screenWidth/3.04,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 12.14, screenHeight / 48.63, screenWidth / 45.53, screenHeight / 48.63),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Image.asset(
                                "img/categories/Main_calligraphy_names-02.png",
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed("diwani");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight/3.75,
                              width: screenWidth/3.04,
                              //  padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 45.53, screenHeight / 48.63, screenWidth / 91.01, screenHeight / 48.63),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                //  border: Border.all(color: Colors.black, width: 7),
                              ),
                              child: Image.asset(
                                "img/categories/Main_calligraphy_names-01.png",
                              ),
                            ),
                            onTap: () {
                              // print("skata");
                              Navigator.of(context).pushNamed("ruqaa");
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: screenHeight/3.75,
                              width: screenWidth/3.04,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 12.14, screenHeight / 48.63, screenWidth / 45.53, screenHeight / 48.63),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Image.asset(
                                "img/categories/Main_calligraphy_names-04.png",
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed("farsi");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight/3.75,
                              width: screenWidth/3.04,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 45.53, screenHeight / 48.63, screenWidth / 91.01, screenHeight / 48.63),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),
                              child: Image.asset(
                                "img/categories/Main_calligraphy_names-03.png",

                             //   fit: BoxFit.cover,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed("diwani_jali");
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: screenHeight/3.75,
                              width: screenWidth/3.04,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 12.14, screenHeight / 48.63, screenWidth / 45.53, screenHeight / 48.63),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),

                              child: Image.asset(
                                "img/categories/Main_calligraphy_names-06.png",
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed("tholoth");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: screenHeight/3.75,
                              width: screenWidth/3.04,
                              // padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(screenWidth / 45.53, screenHeight / 48.63, screenWidth / 91.01, screenHeight / 48.63),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                // border: Border.all(color: Colors.black, width: 7),
                              ),
                              child: Image.asset(
                                "img/categories/Main_calligraphy_names-05.png",
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed("naskh");
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                new op_menu.OptionsWidget().getMenu(screenWidth,screenHeight),
                /* Container(
            color: Color.fromRGBO(77, 77, 77, 1),
            //  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            /*width: 1350,
            height: 1300,*/
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        //  padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(150, 30, 20, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          //  border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Image.asset(
                          "img/categories/options_all_buttons_01.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        // Navigator.of(context).pushNamed("ruqaa");
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 40, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/categories/options_all_buttons_02.png",
                          width: 700,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(150, 30, 20, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Image.asset(
                          "img/categories/options_all_buttons_03.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        //Navigator.of(context).pushNamed("ruqaa");
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 40, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/categories/options_all_buttons_04.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(150, 30, 20, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Image.asset(
                          "img/categories/options_all_buttons_05.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        // Navigator.of(context).pushNamed("ruqaa");
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 40, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/categories/options_all_buttons_06.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          )*/
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

/* _CategoriesState(){
    menu = Container(
      // color: Color.fromRGBO(240, 239, 238, 1),
      child: Row(
        children: [
          Container(
            color: Color.fromRGBO(240, 239, 238, 1),
            //  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: 1350,
            height: 1300,
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        //  padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 20, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          //  border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Image.asset(
                          "img/categories/Main_calligraphy_names-01.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        print("skata");
                        Navigator.of(context).pushNamed("ruqaa");
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 40, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/categories/Main_calligraphy_names-02.png",
                          width: 700,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 20, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Image.asset(
                          "img/categories/Main_calligraphy_names-03.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        //Navigator.of(context).pushNamed("ruqaa");
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 40, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/categories/Main_calligraphy_names-04.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 20, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Image.asset(
                          "img/categories/Main_calligraphy_names-05.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        // Navigator.of(context).pushNamed("ruqaa");
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 40, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/categories/Main_calligraphy_names-06.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          InkWell(
              child: Container(
            height: 1300,
            //  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset(
              "img/categories/all_call_up_01.png",
              width: 465,
              height: 1035,
              fit: BoxFit.contain,
            ),
          ),
          onTap: swapStackChildren
          )
        ],
      ),
    );
    settinmenu = Container(
      // color: Color.fromRGBO(240, 239, 238, 1),
      child: Row(
        children: [
          Container(
            color: Color.fromRGBO(77, 77, 77, 1),
            //  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: 1350,
            height: 1300,
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        //  padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 20, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          //  border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Image.asset(
                          "img/categories/options_all_buttons_01.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                       // Navigator.of(context).pushNamed("ruqaa");
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 40, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/categories/options_all_buttons_02.png",
                          width: 700,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 20, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Image.asset(
                          "img/categories/options_all_buttons_03.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        //Navigator.of(context).pushNamed("ruqaa");
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 40, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/categories/options_all_buttons_04.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 20, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Image.asset(
                          "img/categories/options_all_buttons_05.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        // Navigator.of(context).pushNamed("ruqaa");
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 350,
                        width: 600,
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 30, 40, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // border: Border.all(color: Colors.black, width: 7),
                        ),

                        child: Image.asset(
                          "img/categories/options_all_buttons_06.png",
                          width: 538,
                          height: 178,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          InkWell(
              child: Container(
            height: 1300,
            //  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset(
              "img/categories/options_up_01.png",
              width: 465,
              height: 1035,
              fit: BoxFit.contain,
            ),
          ),
          onTap: swapStackChildren)
        ],
      ),
    );
    stackChildren = [
      settinmenu,
      menu

    ];
  }*/
