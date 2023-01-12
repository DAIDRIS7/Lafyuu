import 'package:lafyuu/features/cart/model/cart_model.dart';

abstract class CartStates {}

class LoddingCart extends CartStates {}

class LoddedCart extends CartStates {
  CartModel list;
  LoddedCart(
    this.list,
  );
}
