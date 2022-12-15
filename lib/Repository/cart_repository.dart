import 'package:dio/dio.dart';
import 'package:lafyuu/Model/cart_model.dart';

class CartRepository {
//  late final listOfCartsDetails;
  Future<List<Product>> getCartDetails() async {
    final response = await Dio().get(
      "https://dummyjson.com/carts/1",
    );
    final listOfCartsDetails = CartModel.fromJson(response.data);
    return listOfCartsDetails.products;
  }

  getTotal() async {
    final response = await Dio().get(
      "https://dummyjson.com/carts/1",
    );

    final CartModel getTotal = CartModel.fromJson(response.data);
    return getTotal.total;
  }

  getDiscount() async {
    final response = await Dio().get(
      "https://dummyjson.com/carts/1",
    );

    final getDiscount = CartModel.fromJson(response.data);
    return getDiscount;
  }

  Future<int> getQuantity() async {
    final response = await Dio().get(
      "https://dummyjson.com/carts/1",
    );

    final getQuantity = CartModel.fromJson(response.data);
    return getQuantity.totalQuantity;
  }
}
