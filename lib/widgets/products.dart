import 'package:flutter/material.dart';
import 'package:productsstore/pages/productDetailPage.dart';
import 'package:productsstore/widgets/products_manager.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct});

  @override
  Widget build(BuildContext context) {
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
    print(productCard);
    return productCard;
  }

  Widget _builderProductItem(BuildContext context, int index) {
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
                onPressed: () => Navigator.push<bool>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductDetails(
                      title: products[index]['title'],
                      ImageUrl: products[index]['imageUrl'],
                    ),
                  ),
                ).then((bool value) {
                  if (value) {
                    deleteProduct(index);
                  }
                }),
              )
            ],
          )
        ],
      ),
    );
  }
}
