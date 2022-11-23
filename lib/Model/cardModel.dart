class CardModel {
  String urlImage;
  String title;
  double price;
  double? oldPrice;
  double discount;
  double? rating;

  CardModel(
      {required this.urlImage,
      required this.title,
      required this.price,
      this.oldPrice,
      required this.discount,
      this.rating});
}
