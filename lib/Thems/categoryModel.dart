import 'dart:convert';

class CategoryModel {
  final String urlImage;
  final String title;
  CategoryModel({
    required this.urlImage,
    required this.title,
  });
  factory CategoryModel.fromjson(Map<String, dynamic> json) {
    return CategoryModel(
      urlImage: json["image"],
      title: json["name"],
    );
  }
}
