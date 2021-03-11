import 'package:flutter/material.dart';
import 'package:fluttergesture/components/Settings.dart';
import 'DrawPage.dart';
import 'pointertest.dart';


class endPoint extends StatefulWidget {
  @override
  _endPointState createState() => _endPointState();
}

class _endPointState extends State<endPoint> {
  @override
  Widget build(BuildContext context) {
    print("Last Ruqa letter:"+Setting.getLastruqletter());

    Setting.setUserPath(Setting.getselectedNote()+"_"+Setting.getselectedSubNot()+"_"+Setting.getLastruqletter());
    return DrawPage( "نوتة خط الرقعة الأولى","img/notes/"+Setting.getselectedNote()+"/"+Setting.getselectedSubNot()+"/letter ("+Setting.getLastruqletter()+").jpg");


   // return DrawPagePointer( "نوتة خط الرقعة الأولى","img/notes/ruqaa/Ruqa1.jpg");
  }
}


