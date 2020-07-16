import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['food'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("demo app"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text("Add product"),
              onPressed: () {
                setState(() {
                  _products.add("my Best food");
                });
              },
            ),
          ),
          Column(
            children: _products
                .map((element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/food.jpg"),
                          Text(element),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    ));
  }
}
