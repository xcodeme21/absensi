import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:convert';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new AfterSplash(),
      // title: new Text('Developed by Rudextech',
      //   style: new TextStyle(
      //     fontWeight: FontWeight.bold,
      //     fontSize: 14.0,
      //     color: Colors.black.withOpacity(0.5),
      //   ),
      // ),
      
      image: Image(image: AssetImage('assets/images/logosplash.png')),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      // title: new Text("Caldera"),
      // automaticallyImplyLeading: false
      // ),
      body: new Center(
        child: new Text("Selesai!",
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0
        ),),

      ),
    );
  }
}