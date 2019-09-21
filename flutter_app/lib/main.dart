import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'camera_scanner.dart';

List<CameraDescription> cameras;

Future<Null> main() async{
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
  var cameras;
  MyHomePage(this.cameras);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Camera Try"),
      ),
      body: CameraScreen(widget.cameras)
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
