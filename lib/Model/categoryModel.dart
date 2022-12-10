import 'dart:convert';

class CategoryModel {
  final String urlImage;
  final String title;
  final int? id;
  CategoryModel({
    this.id,
    required this.urlImage,
    required this.title,
  });

  factory CategoryModel.fromjson(Map<String, dynamic> json) {
    return CategoryModel(
      urlImage: json["image"],
      title: json["name"],
      id: json["id"],
    );
  }
}

ProductsByCategory productsByCategoryFromJson(String str) =>
    ProductsByCategory.fromJson(json.decode(str));

String productsByCategoryToJson(ProductsByCategory data) =>
    json.encode(data.toJson());

class ProductsByCategory {
  ProductsByCategory({
   required this.products,
   required this.total,
   required this.skip,
  required  this.limit,
  });

  List<Product> products;
  int total;
  int skip;
  int limit;

  factory ProductsByCategory.fromJson(Map<String, dynamic> json) =>
      ProductsByCategory(
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
      };
}

class Product {
  Product({
 required  this.id,
 required  this.title,
  required  this.description,
 required  this.price,
   required this.discountPercentage,
  required  this.rating,
 required  this.stock,
  required  this.brand,
 required  this.category,
 required  this.thumbnail,
 required  this.images,
  });

  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  List<String> images;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        discountPercentage: json["discountPercentage"].toDouble(),
        rating: json["rating"].toDouble(),
        stock: json["stock"],
        brand: json["brand"],
        category: json["category"],
        thumbnail: json["thumbnail"],
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "discountPercentage": discountPercentage,
        "rating": rating,
        "stock": stock,
        "brand": brand,
        "category": category,
        "thumbnail": thumbnail,
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
