// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.baseline,
            // mainAxisSize: MainAxisSize.max,
            //textBaseline: TextBaseline.ideographic,
            children: <Widget>[
              FlatButton(
                onPressed: () async{
                  await launch('https://flutter.dev');
                }
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/prakhar.png'),
                radius: 100.0,

                //foregroundColor: Colors.purple,
              ),
              Text(
                'Prakhar Suahne',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                color: Colors.white,
                //elevation: 200,

                child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal.shade800),
                    title: Text(
                      '+91 7587525135',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro'),
                    )),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade800,
                  ),
                  title: Text(
                    'Suhane78@gmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                color: Colors.white,
                //elevation: 200,

                child: ListTile(
                    leading: Icon(Icons.flag, color: Colors.teal.shade800),
                    title: Text(
                      ' INDIA',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro'),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
