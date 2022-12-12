import 'package:dio/dio.dart';
import 'package:lafyuu/Model/cart_model.dart';

getCartDetails() async {
  final response = await Dio().get(
    "https://dummyjson.com/carts/1",
  );
  final listOfCartsDetails = Product.fromJson(response.data);
}
