import 'package:dio/dio.dart';
import 'package:lafyuu/Model/cart_model.dart';

class CartRepository {
//  late final listOfCartsDetails;
  getCartDetails() async {
    final response = await Dio().get(
      "https://dummyjson.com/carts/1",
    );
    final listOfCartsDetails = CartModel.fromJson(response.data);
    return listOfCartsDetails;
  }
}
