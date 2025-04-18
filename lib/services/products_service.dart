import 'package:mini_store/helper/api.dart';
import 'package:mini_store/models/products_model.dart';

class ProductsService {
  Future<List<Product>> getAllProducts() async {
    try {
      var data = await Api().get(url: 'https://fakestoreapi.com/products');
      List<Product> products =
          data.map((product) => Product.fromJson(product)).toList();
      return products;
    } catch (e) {
      print('errrrrrrr ${e.toString()}');
      return [];
    }
  }

  Future<List<Product>> getAllProductsByCategory(String categoryName) async {
    var data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );

    List<Product> products =
        data.map((product) => Product.fromJson(product)).toList();
    return products;
  }

  Future<Product> addProduct() async {
    var data = await Api().post(url: 'https://fakestoreapi.com/products');
    Product product = Product.fromJson(data);
    return product;
  }
}
