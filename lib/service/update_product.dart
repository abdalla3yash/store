import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
    required int id,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': price,
        'desc': desc,
        'image': image,
        'category': category
      },
    );

    return ProductModel.fromJson(data);
  }
}