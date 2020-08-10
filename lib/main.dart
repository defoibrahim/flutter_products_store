import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:productsstore/pages/productDetailPage.dart';
import './pages/product_create.dart';
import './pages/product_list.dart';
import './pages/products_admin.dart';
import 'pages/homePage.dart';

void main() {
  runApp(MyApp());

  debugPaintBaselinesEnabled = false;
  debugPaintSizeEnabled = false;
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> name) {
    setState(() {
      _products.add(name);
    });
    print(_products);
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.deepOrange, accentColor: Colors.deepPurple),
//      home: HomePage(_products, _addProduct, _deleteProduct),
        routes: {
          '/': (BuildContext context) =>
              HomePage(_products, _addProduct, _deleteProduct),
          '/admin': (BuildContext context) => ProductsAdminPage(),
          '/create': (BuildContext context) => ProductCreatePage(),
          '/list': (BuildContext context) => ProductListPage(),
        },
        onGenerateRoute: (RouteSettings setting) {
          final List<String> pathElments = setting.name.split('/');
          if (pathElments[0] != '') {
            return null;
          }
          if (pathElments[1] == 'product') {
            final int index = int.parse(pathElments[2]);
            print("index number $index");
            return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductDetails(
                title: _products[index]['title'],
                ImageUrl: _products[index]['imageUrl'],
              ),
            );
          }
          return null;
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (BuildContext context) =>
                  HomePage(_products, _addProduct, _deleteProduct));
        });
  }
}
