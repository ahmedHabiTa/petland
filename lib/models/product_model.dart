class ProductModel {
  String name;
  String image;
  String price;
  String description;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });

  static ProductModel fromJson(Map<String, dynamic> json) => ProductModel(
        name: json['name'],
        image: json['image'],
        price: json['price'],
        description: json['description'],
      );
}
