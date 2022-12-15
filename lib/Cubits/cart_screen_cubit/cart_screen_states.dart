import 'package:lafyuu/Model/cart_model.dart';

abstract class CartStates {}

class LoddingCart extends CartStates {}

class LoddedCart extends CartStates {
  List<Product> list;
  LoddedCart({
    required this.list,
  });
}

class LoddedCartTwo extends CartStates {
  int number;
  LoddedCartTwo(this.number);
}
