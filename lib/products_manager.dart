import 'package:flutter/material.dart';
import 'package:productsstore/products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> _products;

  ProductManager(this._products);

// margin: EdgeInsets.all(10.0),
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: Products(_products)),
      ],
    );
  }
}
