import 'package:flutter/material.dart';
import '../pages/homePage.dart';
import 'package:productsstore/pages/products_admin.dart';

import '../products_manager.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  HomePage(this.products);

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
              leading: Icon(Icons.mode_edit),
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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ProductManager(products),
    );
  }
}
