import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mini_store/models/products_model.dart';

class ProductsService {
  Future<List<Product>> getAllProducts() async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      List<Product> products =
          data.map((product) => Product.fromJson(product)).toList();
      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
