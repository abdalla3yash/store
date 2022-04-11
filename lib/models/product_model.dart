class ProductModel {
  final dynamic id;
  final String title;
  final String description;
  final String image, category;
  num? price;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.category,
    required this.description,
    required this.title,
    required this.image,
    this.price,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        description: jsonData['description'],
        title: jsonData['title'],
        image: jsonData['image'],
        price: jsonData["price"],
        category: jsonData['category'],
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  num? rate;
  final int count;
  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
