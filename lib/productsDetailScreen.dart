import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsDetailScreen extends StatelessWidget {
  static const String route_name = '/product_details';
  final productName = Get.arguments['productName'];
  final productUrl = Get.arguments['productUrl'];
  final productDescription = Get.arguments['productDescription'];
  final productPrice = Get.arguments['productPrice'];

  final TextStyle common = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Text(
              productName,
              style: common,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.assignment,
              size: 30,
            ),
            Spacer()
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(productUrl),
            SizedBox(
              height: 30,
            ),
            Text(
              productDescription,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text('Buy Now for '+productPrice.toString(), style: common,),
              
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
