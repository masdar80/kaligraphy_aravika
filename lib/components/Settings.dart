import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'FlipBookPainter.dart';

class Setting  {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  static String user_path = "";


  static String getUserPath()
  {
    return user_path;
  }
  static void setUserPath(user_path_)
  {
    user_path=user_path_;
  }


  static String spoints = "";


  Future<bool> savePoints(String key,String touchPoints) async
  {
    //key  = "pointd"
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString(key, touchPoints);

    return prefs.commit();
  }

  Future<String> loadPoints(String key) async
  {
    //print("load 1");
    SharedPreferences prefs= await SharedPreferences.getInstance();


    if(!prefs.containsKey(key))
      return "empty";
  //  print("load 12"+prefs.getString(key));
    return prefs.getString(key);

   // print("Load points in  :"+spoints);
   // return spoints;

  }

  static String getPoints()
  {
    return spoints;
  }
  static void setPoints(touchpoints)
  {
    spoints=touchpoints;
  }


  /***************************************/

  static String selectedNote="ruqaa";


  Future<bool> saveselectedNote(String selectedNote) async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString("selectedNote", selectedNote);
    print("Save selectedNote :"+selectedNote);
    return prefs.commit();
  }

  Future<String> loadselectedNote() async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    String selectedNote=prefs.getString("selectedNote");
    print("Load selectedNote :"+selectedNote);
    return selectedNote;
  }

  static String getselectedNote()
  {
    return selectedNote;
  }
  static void setselectedNote(note)
  {
    selectedNote=note;
  }
  /***********************************/

  static String selectedSubNot="letters";

  Future<bool> saveselectedSubNot(String selectedSubNot) async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString("selectedSubNot", selectedSubNot);
    print("Save selectedSubNot :"+selectedSubNot);
    return prefs.commit();
  }

  Future<String> loadselectedSubNot() async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    String selectedSubNot=prefs.getString("selectedSubNot");
    print("Load selectedSubNot :"+selectedSubNot);
    return selectedSubNot;
  }

  static String getselectedSubNot()
  {
    return selectedSubNot;
  }
  static void setselectedSubNot(subnote)
  {
    selectedSubNot=subnote;
  }
  /***********************************/
   static String ruqletter="1";

   Future<bool> saveMyruqletter(String ruqletter) async
   {
     SharedPreferences prefs= await SharedPreferences.getInstance();
     prefs.setString("myruqletter", ruqletter);
     print("Save ruqletter :"+ruqletter);
     return prefs.commit();
   }

  Future<String> loadMyruqletter() async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    String ruqletter=prefs.getString("myruqletter");
    print("Load ruqletter :"+ruqletter);
    return ruqletter;
  }

   static String getLastruqletter()
  {
    return ruqletter;
  }
  static void setLastruqletter(let)
  {
    ruqletter=let;
  }

  /******************************************/
  static String nasletter="1";
  Future<bool> saveMynasletter(String nasletter) async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString("mynasletter", nasletter);
    print("Save nasletter :"+nasletter);
    return prefs.commit();
  }

  Future<String> loadMynasletter() async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    String nasletter=prefs.getString("mynasletter");
    print("Load nasletter :"+nasletter);
    return nasletter;
  }

  static String getLastnasletter()
  {
    return nasletter;
  }
  static void setLastnasletter(let)
  {
    nasletter=let;
  }
  /******************************************/
  static String diwletter="1";

  Future<bool> saveMydiwletter(String diwletter) async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString("mydiwletter", diwletter);
    print("Save diwletter :"+diwletter);
    return prefs.commit();
  }

  Future<String> loadMydiwletter() async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    String diwletter=prefs.getString("mydiwletter");
    print("Load diwletter :"+diwletter);
    return diwletter;
  }

  static String getLastdiwletter()
  {
    return diwletter;
  }
  static void setLastdiwletter(let)
  {
    diwletter=let;
  }
  /******************************************/
  static String tholetter="1";
  Future<bool> saveMytholetter(String tholetter) async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString("mytholetter", tholetter);
    print("Save tholetter :"+tholetter);
    return prefs.commit();
  }

  Future<String> loadMytholetter() async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    String tholetter=prefs.getString("mytholetter");
    print("Load tholetter :"+tholetter);
    return tholetter;
  }

  static String getLasttholetter()
  {
    return tholetter;
  }
  static void setLasttholetter(let)
  {
    tholetter=let;
  }
  /******************************************/
  static String farsletter="1";
  Future<bool> saveMyfarsletter(String farsletter) async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString("myfarsletter", farsletter);
    print("Save farsletter :"+farsletter);
    return prefs.commit();
  }

  Future<String> loadMyfarsletter() async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    String farsletter=prefs.getString("myfarsletter");
    print("Load farsletter :"+farsletter);
    return farsletter;
  }

  static String getLastfarsletter()
  {
    return farsletter;
  }
  static void setLastfarsletter(let)
  {
    farsletter=let;
  }
  /******************************************/
  static String jalletter="1";
  Future<bool> saveMyjalletter(String jalletter) async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString("myjalletter", jalletter);
    print("Save jalletter :"+jalletter);
    return prefs.commit();
  }

  Future<String> loadMyjalletter() async
  {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    String jalletter=prefs.getString("myjalletter");
    print("Load jalletter :"+tholetter);
    return tholetter;
  }

  static String getLastjalletter()
  {
    return jalletter;
  }
  static void setLastjalletter(let)
  {
    jalletter=let;
  }
/******************************************/



  static void setLastLetter(key)
  {
    switch(selectedNote) {
      case "ruqaa": {
        setLastruqletter(key);
      }
      break;

      case "naskh": {
        setLastnasletter(key);
      }
      break;

      case "diwani": {
        setLastdiwletter(key);
      }
      break;

      case "farsi": {
        setLastfarsletter(key);
      }
      break;

      case "tholoth": {
        setLasttholetter(key);
      }
      break;

      case "jalali": {
        setLastjalletter(key);
      }
      break;
      default: {
        setLastruqletter(key);
      }
      break;
    }
  }

}
