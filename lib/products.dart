import 'package:flutter/material.dart';
import 'package:productsstore/pages/productDetailPage.dart';
import 'file:///C:/Users/defo%20Ibrahim/AndroidFlutterProjects/products_store/lib/products_manager.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    print("****F ***" + products.length.toString());
    return _buildProductList();
  }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _builderProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(child: Text("No product found , add some"));
    }

    return productCard;
  }

  Widget _builderProductItem(BuildContext context, int index) {
    print("****E ***" + products.length.toString());
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () => Navigator.pushNamed<bool>(
                    context, '/product/' + index.toString()),
              )
            ],
          )
        ],
      ),
    );
  }
}
