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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            productUrl == 'None' ? Image.asset('assets/image/cart.jpg') : Image.network(productUrl),
            SizedBox(
              height: 20,
            ),
            Text(
              productDescription,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Buy Now for ' + productPrice.toString(),
                style: common,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
