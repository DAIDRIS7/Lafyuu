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
          title: value["title"],
          urlImage: value["thumbnail"],
          rating: value["rating"],
        ),
      ),
    );
    print(listOfProduct);
    return listOfProduct;
  }
}
