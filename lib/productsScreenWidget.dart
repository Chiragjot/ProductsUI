import 'package:flutter/material.dart';

class ProductsScreenWidget extends StatelessWidget {
  String id;
  String productName;
  String productUrl;
  String productrating;
  String productDescription;
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
  });
  @override
  Widget build(BuildContext context) {
    return Card(
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
                '\$ 30',
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
    );
  }
}
