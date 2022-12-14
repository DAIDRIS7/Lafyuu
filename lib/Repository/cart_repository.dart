import 'package:dio/dio.dart';
import 'package:lafyuu/Model/cart_model.dart';

class CartRepository {
  late final listOfCartsDetails;
  getCartDetails() async {
    final response = await Dio().get(
      "https://dummyjson.com/carts/1",
    );
    listOfCartsDetails = CartModel.fromJson(response.data);
    return listOfCartsDetails.products;
  }

  getTotal() {
    final getTotal = listOfCartsDetails.total;
    return getTotal;
  }

  getDiscount() {
    final getDiscount = listOfCartsDetails.discountedTotal;
    return getDiscount;
  }

  Future<int> getQuantity() async {
    final getQuantity = listOfCartsDetails.totalQuantity;
    return getQuantity;
  }
}
