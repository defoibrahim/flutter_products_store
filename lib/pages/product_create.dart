import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  Function addProduct, deleteProduct;
  ProductCreatePage(this.addProduct, this.deleteProduct);

  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleMsg = '';
  double price = 0;
  String desc = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Product title'),
            onChanged: (String value) {
              setState(() {
                titleMsg = value;
              });
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Product price'),
            onChanged: (String value) {
              setState(() {
                price = double.parse(value);
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product description'),
            maxLines: 3,
            onChanged: (String value) {
              setState(() {
                desc = value;
              });
            },
          ),
          RaisedButton(
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': titleMsg,
                'price': price,
                'description': desc,
                'imageUrl': 'assets/food.jpg',
              };
              widget.addProduct(product);
            },
            color: Colors.orange,
            child: Text("Save"),
          )
        ],
      ),
    );
  }
}
