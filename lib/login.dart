import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LogIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(

        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'RaQeem',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 80),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 50),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(500, 100, 500, 50),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',


                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(500, 50, 500, 50),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.fromLTRB(500, 50, 500, 50),

                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password',style: TextStyle(fontSize: 50),),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(500, 0, 500, 5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login',style: TextStyle(fontSize: 40),),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.of(context).pushNamed("homepage")   ;                   },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?',style: TextStyle(fontSize: 40),),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 40),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )))
      );
  }
}
