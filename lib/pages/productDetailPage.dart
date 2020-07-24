import 'package:flutter/material.dart';
import 'dart:async';
import 'package:productsstore/widgets/products.dart';

class ProductDetails extends StatelessWidget {
  Products products;
  final String title;
  final String ImageUrl;
  final isDeleted = false;

  ProductDetails({this.products, this.title, this.ImageUrl});
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
              child: Text("this is Details page"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Delete"),
                onPressed: () => Navigator.pop(context, true),
              ),
            )
          ],
        ),
      ),
    );
  }
}
