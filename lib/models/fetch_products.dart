import 'dart:convert';
import 'package:deep_klarity/models/product_model.dart';
import 'package:http/http.dart' as http;

class FetchProducts {
    Future<List<Products>> getProducts() async {
    const url = "https://api.npoint.io/727e7601bf9cea6210dc";
    http.Response r = await http.get(Uri.parse(url));
    if(r.statusCode == 200){
      List<dynamic> json = jsonDecode(r.body);
      List<Products> products = json.map((dynamic item) => Products.fromJson(item)).toList();
      return products;
    }else{
      throw("failed");
    }
  }
}