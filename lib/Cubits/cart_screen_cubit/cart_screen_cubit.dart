import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/cart_screen_cubit/cart_screen_states.dart';
import 'package:lafyuu/Repository/cart_repository.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(LoddingCart());
  getCartDetails() async {
    final cartDetails = await CartRepository().getCartDetails();
    emit(LoddedCart(list: cartDetails));
  }

  getTotal() async {
    final total = await CartRepository().getTotal();
    emit(LoddedCart(total));
  }

  getQuantity() async {
    final getQuantity = await CartRepository().getQuantity();
    emit(LoddedCart(getQuantity));
  }

  getDiscountPrice() async {
    final getDiscountPrice = await CartRepository().getDiscount();
  }
}
