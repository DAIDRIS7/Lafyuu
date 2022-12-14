import 'package:dio/dio.dart';
import 'package:lafyuu/Model/cart_model.dart';

class CartRepository {
  getCartDetails() async {
    final response = await Dio().get(
      "https://dummyjson.com/carts/1",
    );
    final listOfCartsDetails = CartModel.fromJson(response.data);
    return listOfCartsDetails.products;
    listOfCartsDetails.discountedTotal;
    getTotal() {
      final getTotal = listOfCartsDetails.total;
      return getTotal;
    }

    getDiscount() {
      final getDiscount = listOfCartsDetails.discountedTotal;
      return getDiscount;
    }

    getQuantity() {
      final getQuantity = listOfCartsDetails.totalQuantity;
      return getQuantity;
    }

    listOfCartsDetails.products;
  }
}
