import 'package:deep_klarity/productsDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ProductsScreenWidget extends StatelessWidget {
  String id;
  String productName;
  String productUrl;
  String productrating;
  String productDescription;
  String productPrice;
  final TextStyle common = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.white,
  );
  ProductsScreenWidget({
    required this.id,
    required this.productName,
    required this.productUrl,
    required this.productrating,
    required this.productDescription,
    required this.productPrice,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          ProductsDetailScreen.route_name,
          arguments: {
            'productName': productName,
            'productUrl': productUrl,
            'productDescription': productDescription,
            'productPrice': productPrice
          },
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.redAccent,
        shadowColor: Colors.red,
        elevation: 10,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: productUrl == "None"
                  ? Image.asset("assets/image/cart.jpg")
                  : Container(
                      width: double.infinity,
                      child: FadeInImage.assetNetwork(
                          placeholder: 'assets/image/loading.gif',
                          fadeInDuration: const Duration(seconds: 3),
                          fadeInCurve: Curves.bounceIn,
                          fit: BoxFit.cover,
                          height: 250,
                          image: productUrl),
                    ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Spacer(),
                Text(
                  productrating + " / 5",
                  style: common,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  size: 25,
                  color: Colors.yellow,
                ),
                Spacer(),
                Text(
                  productName,
                  style: common,
                ),
                Spacer(),
                Text(
                  "₹ "+productPrice,
                  style: common,
                ),
                Spacer()
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
