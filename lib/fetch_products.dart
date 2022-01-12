import 'dart:convert';
import 'package:deep_klarity/product_model.dart';
import 'package:http/http.dart' as http;

class FetchProducts {
    Future<List<Products>> getProducts() async {
    http.Response r = await http.get(Uri.parse("https://api.jsonbin.io/b/61ddc42e2362237a3a36d6bd/1"));
    if(r.statusCode == 200){
      List<dynamic> json = jsonDecode(r.body);
      List<Products> products = json.map((dynamic item) => Products.fromJson(item)).toList();
      return products;
    }else{
      throw("failed");
    }
  }
}