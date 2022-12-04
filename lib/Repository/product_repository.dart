import 'package:dio/dio.dart';
import 'package:lafyuu/Model/cardModel.dart';

class ProductRepository {
  Future<List<CardModel>> getAllProduct() async {
    final response = await Dio().get("https://dummyjson.com/products");
    final listOfProduct = List<CardModel>.from(
      response.data["products"].map(
        (value) => CardModel(
          discount: value["discountPercentage"],
          price: value["price"],
          oldPrice: value["price"],
          title: value["title"],
          urlImage: value["thumbnail"],
          rating: value["rating"].toDouble(),
        ),
      ),
    );
    print(listOfProduct);
    return listOfProduct;
  }
}

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    required this.products,
    required this.total,
 required  this.skip,
  required  this.limit,
  });

  List<Product> products;
  int total;
  int skip;
  int limit;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
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
required    this.id,
 required  this.title,
required    this.description,
 required  this.price,
required    this.discountPercentage,
required    this.rating,
required    this.stock,
required    this.brand,
required    this.category,
required    this.thumbnail,
required    this.images,
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
