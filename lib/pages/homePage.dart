import 'package:flutter/material.dart';
import '../pages/homePage.dart';
import 'package:productsstore/widgets/products_manager.dart';
import 'package:productsstore/pages/products_admin.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;
  HomePage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("choose"),
            ),
            ListTile(
              title: Text("Manage product"),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("EasyList"),
      ),
      body: ProductManager(products, addProduct, deleteProduct),
    );
  }
}
