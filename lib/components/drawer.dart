import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("mashhourmd@gmail.com"),
              accountName: Text(
                "Mas Dar",
              ),
              currentAccountPicture:
              CircleAvatar(child: Icon(Icons.person)),
              /*decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                    image: AssetImage("images/header.jpg"),
//                        NetworkImage("https://www.amescom.com/demo/logo.svg")
                    fit: BoxFit.fitWidth,
                  )),*/
            ),
            ListTile(
              title: Text(
                "الصفحة الرئيسية",
                style: TextStyle(color: Colors.blueAccent, fontSize: 25),
              ),

              leading: Icon(Icons.home, color: Colors.blueAccent),
              onTap: () {
                Navigator.of(context).pushNamed('homepage');
              },
            ),
            ListTile(
              title: Text(
                "الرقعة",
                style: TextStyle(color: Colors.blueAccent, fontSize: 25),
              ),
              leading: Icon(Icons.category, color: Colors.blueAccent),
              onTap: (){
                Navigator.of(context).pushNamed('ruqaa');
              },
            ),
            ListTile(
              title: Text(
                "الديواني",
                style: TextStyle(color: Colors.blueAccent, fontSize: 25),
              ),
              leading: Icon(Icons.settings, color: Colors.blueAccent),
            ),
            ListTile(
              title: Text(
                "النسخ",
                style: TextStyle(color: Colors.blueAccent, fontSize: 25),
              ),
              leading: Icon(Icons.info, color: Colors.blueAccent),
            ),
            ListTile(
              title: Text(
                "الرقعة",
                style: TextStyle(color: Colors.blueAccent, fontSize: 15),
              ),
              leading: Icon(Icons.info, color: Colors.blueAccent),
            ),
            ListTile(
              title: Text(
                "الرقعة",
                style: TextStyle(color: Colors.blueAccent, fontSize: 25),
              ),
              leading: Icon(Icons.info, color: Colors.blueAccent),
            ),
            ListTile(
              title: Text(
                "In App Purchase",
                style: TextStyle(color: Colors.blueAccent, fontSize: 25),
              ),
              leading: Icon(Icons.info, color: Colors.blueAccent),
              onTap: () {
                Navigator.of(context).pushNamed('purchase');
              },
            )
          ],
        ));
  }
}