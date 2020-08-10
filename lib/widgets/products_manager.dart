import 'package:flutter/material.dart';
import 'package:productsstore/widgets/products.dart';
import 'product_control.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> _products;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager(this._products, this.addProduct, this.deleteProduct);

// margin: EdgeInsets.all(10.0),
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductButton(addProduct),
        ),
        Expanded(child: Products(_products, deleteProduct: deleteProduct)),
      ],
    );
  }
}
