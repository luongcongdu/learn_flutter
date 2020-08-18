import 'package:flutter/material.dart';
import 'BuildListView.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _name = "";
  final nameController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<String> _list = List<String>();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "This is first app",
        home: Scaffold(
          key: _scaffoldKey,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextField(
                        controller: nameController,
                        onChanged: (text) {
                          this.setState(() {
                            _name = text;
                          });
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: "Enter your name"),
                      )),
                  Text(
                    _name,
                    style: TextStyle(color: Colors.green, fontSize: 30),
                  ),
                  Text(
                    "This is the line 2",
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  FlatButton(
                    child: Text("Insert"),
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      this.setState(() {
                        // add data to list
                        _list.add(_name);
                        nameController.text = "";
                      });
                    },
                  ),
                  BuildListView(listName: _list)
                ],
              ),
            ),
          ),
        ));
  }
}
