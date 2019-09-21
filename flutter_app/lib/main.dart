// hello gais packages import kar dena

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'camera_scanner.dart';


// need this
List<CameraDescription> cameras;

//just change your void main to this. VERY IMPORTANT EVERYTHING THAT'S HERE
Future<Null> main() async{
  cameras = await availableCameras();
  runApp(MyApp());
}

// change whatever issok but MyHomePage(cameras) ko mat change karna
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera Try',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(cameras),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var cameras; //important
  MyHomePage(this.cameras);  //important

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera Try"),
      ),
      body: CameraScreen(widget.cameras) // basically for your onPressed when you transition to Camera Scanner call this
    );
  }
}
