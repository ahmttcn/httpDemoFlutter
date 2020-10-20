import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget {
  Product product;
  ProductListRowWidget({this.product});

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                  "https://images.unsplash.com/photo-1558981852-426c6c22a060?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
              height: 130.0,
              width: MediaQuery.of(context).size.width / 2,
            ),
            Text(product.productName),
            Text(
              product.unitPrice.toString(),
              style: TextStyle(
                  fontSize: 18.0, color: Colors.deepPurpleAccent[100]),
            )
          ],
        ),
      ),
    );
  }
}
