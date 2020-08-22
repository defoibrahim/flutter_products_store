import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  Function addProduct, deleteProduct;
  ProductCreatePage(this.addProduct, this.deleteProduct);

  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleMsg = '';
  double _price = 0;
  String _desc = '';
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
                _titleMsg = value;
              });
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Product price'),
            onChanged: (String value) {
              setState(() {
                _price = double.parse(value);
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product description'),
            maxLines: 3,
            onChanged: (String value) {
              setState(() {
                _desc = value;
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': _titleMsg,
                'price': _price,
                'description': _desc,
                'imageUrl': 'assets/food.jpg',
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/');
            },
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            child: Text("Save"),
          )
        ],
      ),
    );
  }
}
