class CardModel {
  String urlImage;
  String title;
  double price;
  double? oldPrice;
  double discount;
  double? rating;
  String? description;

  int? stock;
  String? brand;
  String? category;
  List<String>? images;
  CardModel(
      {required this.urlImage,
      required this.title,
      required this.price,
      this.oldPrice,
      required this.discount,
      this.rating,
      this.stock,
      this.brand,
      this.images,
      this.category,
      this.description});
}
