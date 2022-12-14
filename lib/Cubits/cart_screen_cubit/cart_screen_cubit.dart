import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/cart_screen_cubit/cart_screen_states.dart';
import 'package:lafyuu/Repository/cart_repository.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(LoddingCart());
  getCartDetails() async {
    final cartDetails = await CartRepository().getCartDetails();
    emit(LoddedCart(list: cartDetails));
  }

  getTotal() {
    final total = CartRepository().getTotal();
    emit(LoddedCart(totalPrice: total));
  }
}
