import 'package:deep_klarity/productsDetailScreen.dart';
import 'package:deep_klarity/productsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.red,
      ),
      home: ProductsScreen(),
      getPages: [
        GetPage(
          name: '/',
          page: () => ProductsScreen(),
        ),
        GetPage(name: ProductsDetailScreen.route_name, page: () => ProductsDetailScreen())
      ],
    );
  }
}
