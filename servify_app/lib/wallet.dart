import 'package:flutter/material.dart';


class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Lesson lesson) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.devices, color: Colors.white),
      ),
      title: Text(
        lesson.dev_name,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
       subtitle: Text(lesson.dev_type, style: TextStyle(color: Colors.white)),

    //  subtitle: Row(
//        children: <Widget>[
//          Expanded(
//              flex: 1,
//              child: Container(
//                // tag: 'hero',
//                child: LinearProgressIndicator(
//                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
//                    value: lesson.indicatorValue,
//                    valueColor: AlwaysStoppedAnimation(Colors.green)),
//              )),
////          Expanded(
//            flex: 4,
//            child: Padding(
//                padding: EdgeInsets.only(left: 10.0),
//                child: Text(lesson.level,
//                    style: TextStyle(color: Colors.white))),
//          )
 //       ],
      );
//      trailing:
//      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
//      onTap: () {
//      },
 //   );

    Card makeCard(Lesson lesson) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
        child: makeListTile(lesson),
      ),
    );

    final makeBody = Container(
//
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );

    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Colors.lightGreen,
      title: Text('Device Wallet'),

    );

    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: topAppBar,
      body: makeBody,
      //bottomNavigationBar: makeBottom,
    );
  }
}
class Lesson {
  String dev_name;
  String dev_type;

  Lesson(
      {this.dev_name, this.dev_type});
}

List getLessons() {
  return [
    Lesson(dev_name: "Device 1",
           dev_type: "Laptop"),
    Lesson(dev_name: "Device 2",
        dev_type: "Cell phone"),
    Lesson(dev_name: "Device 3",
        dev_type: "Laptop"),
    Lesson(dev_name: "Device 4",
        dev_type: "Keyboard"),
    Lesson(dev_name: "Device 5",
        dev_type: "TV Monitor"),
    Lesson(dev_name: "Device 6",
        dev_type: "Cell phone"),
    ];
}
