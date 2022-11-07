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
