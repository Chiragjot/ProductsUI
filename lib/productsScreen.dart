import 'package:deep_klarity/fetch_products.dart';
import 'package:deep_klarity/product_model.dart';
import 'package:deep_klarity/productsScreenWidget.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  final TextStyle common = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    final FetchProducts client = FetchProducts();
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 232, 232, 1),
      appBar: AppBar(
        title: Row(children: [Spacer(), Text("All Products", style: common,), SizedBox(width: 20,), Icon(Icons.shopping_bag, size: 30,), Spacer()],),
      ),
      body: FutureBuilder(
        future: client.getProducts(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Products>> snapshot) {
          if (snapshot.hasData) {
            var products = snapshot.data;
            return ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                );
              },
              itemCount: products!.length,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, i) {
                return ProductsScreenWidget(
                    id: products[i].id.toString(),
                    productName: products[i].productName.toString(),
                    productUrl: products[i].productUrl.toString(),
                    productrating: products[i].productrating.toString(),
                    productDescription:
                        products[i].productDescription.toString());
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: FetchProducts().getProducts,
      ),
    );
  }
}
