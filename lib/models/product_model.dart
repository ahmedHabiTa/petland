class ProductModel {
  String name;
  String image;
  String price;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
  });

  static ProductModel fromJson(Map<String, dynamic> json) => ProductModel(
        name: json['name'],
        image: json['image'],
        price: json['price'],
      );
}
