import 'package:lafyuu/Model/cart_model.dart';

abstract class CartStates {}

class LoddingCart extends CartStates {}

class LoddedCart extends CartStates {
  List<Product>? list;
  int? totalPrice;
  LoddedCart({
    this.list,
    this.totalPrice,
  });
}
