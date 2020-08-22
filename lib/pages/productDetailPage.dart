import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'file:///C:/Users/defo%20Ibrahim/AndroidFlutterProjects/products_store/lib/products.dart';

class ProductDetails extends StatelessWidget {
  Products products;
  final String title;
  final String ImageUrl;
  final isDeleted = false;

  ProductDetails({this.products, this.title, this.ImageUrl});

  _showWearningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are you sure ?"),
            content: Text("This action can't be undone"),
            actions: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text("Continue"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("back btn prsed");
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(ImageUrl),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("this is the  Details page"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text("Delete"),
                onPressed: () => _showWearningDialog(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
