
import 'package:mini_store/helper/api.dart';

class CategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    var data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );

    return data;
  }
}
