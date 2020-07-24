import 'package:flutter/material.dart';

class ProductButton extends StatelessWidget {
  final Function addProduct;
  ProductButton(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      child: Text("Add product"),
      onPressed: () {
        addProduct({'title': "haha biaatch", 'imageUrl': "assets/food.jpg"});
      },
    );
  }
}
