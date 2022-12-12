import 'package:dio/dio.dart';
import 'package:lafyuu/Model/cart_model.dart';

getCartDetails() async {
  final response = await Dio().get(
    "",
  );
  final listOfCartsDetails = Product.fromJson(response.data);
}
