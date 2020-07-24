import 'package:flutter/material.dart';
import 'package:productsstore/widgets/products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> initData;

  const ProductManager({Key key, this.initData}) : super(key: key);

  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    if (widget.initData != null) {
      _products.add(widget.initData);
    }
    super.initState();
  }

  void _addProduct(Map<String, String> name) {
    setState(() {
      _products.add(name);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

// margin: EdgeInsets.all(10.0),
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductButton(_addProduct),
        ),
        Expanded(child: Products(_products, deleteProduct: _deleteProduct)),
      ],
    );
  }
}
