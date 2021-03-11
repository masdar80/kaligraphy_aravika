import 'package:flutter/material.dart';
import 'components/drawer.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class Purchases extends StatefulWidget {
  @override
  _PurchasesState createState() => _PurchasesState();
}

class _PurchasesState extends State<Purchases> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text("In App Purchase"),
          ),
          drawer: MyDrawer(),
          body: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      height: 178,
                      width: 538,
                      // padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 7),
                      ),
                      child: Image.asset(
                        "img/categories/ruqaa.png",
                        width: 538,
                        height: 178,
                        fit: BoxFit.cover,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("ruqaa");
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 178,
                      width: 538,
                      // padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 30),

                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 7),
                      ),

                      child: Image.asset(
                        "img/categories/diwani.png",
                        width: 538,
                        height: 178,
                        fit: BoxFit.cover,
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      height: 178,
                      width: 538,
                      //  padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 7),
                      ),
                      child: Image.asset(
                        "img/categories/naskh.png",
                        width: 538,
                        height: 178,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              )
            ],
          ),
        ));
  }
}
