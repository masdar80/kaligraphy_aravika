import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  getMenu(screenWidth, screenHeight) {
    return Container(
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
                  height: screenHeight / 3.75,
                  width: screenWidth / 3.04,
                  //  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(screenWidth / 12.14, screenHeight / 48.63, screenWidth / 91.01, screenHeight / 48.63),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    //  border: Border.all(color: Colors.black, width: 7),
                  ),
                  child: Image.asset(
                    "img/categories/options_all_buttons_01.png",

                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pushNamed("ruqaa");
                },
              ),
              InkWell(
                child: Container(
                  height: screenHeight/3.75,
                  width: screenWidth/3.04,
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(screenWidth / 45.53, screenHeight / 48.63 , screenWidth / 45.53, screenHeight / 48.63 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    // border: Border.all(color: Colors.black, width: 7),
                  ),

                  child: Image.asset(
                    "img/categories/options_all_buttons_02.png",

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
                  height: screenHeight/3.75,
                  width: screenWidth/3.04,
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(screenWidth / 12.14, screenHeight / 48.63, screenWidth / 91.01, screenHeight / 48.63),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    // border: Border.all(color: Colors.black, width: 7),
                  ),
                  child: Image.asset(
                    "img/categories/options_all_buttons_03.png",

                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {
                  //Navigator.of(context).pushNamed("ruqaa");
                },
              ),
              InkWell(
                child: Container(
                  height: screenHeight/3.75,
                  width: screenWidth/3.04,
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(screenWidth / 45.53, screenHeight / 48.63 , screenWidth / 45.53, screenHeight / 48.63),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    // border: Border.all(color: Colors.black, width: 7),
                  ),

                  child: Image.asset(
                    "img/categories/options_all_buttons_04.png",

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
                  height: screenHeight/3.75,
                  width: screenWidth/3.04,
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(screenWidth / 12.14, screenHeight / 48.63, screenWidth / 91.01, screenHeight / 48.63),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    // border: Border.all(color: Colors.black, width: 7),
                  ),
                  child: Image.asset(
                    "img/categories/options_all_buttons_05.png",

                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pushNamed("ruqaa");
                },
              ),
              InkWell(
                child: Container(
                  height: screenHeight/3.75,
                  width: screenWidth/3.04,
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(screenWidth / 45.53, screenHeight / 48.63 , screenWidth / 45.53, screenHeight / 48.63),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    // border: Border.all(color: Colors.black, width: 7),
                  ),

                  child: Image.asset(
                    "img/categories/options_all_buttons_06.png",

                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {}
}
