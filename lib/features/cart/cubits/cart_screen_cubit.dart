import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/features/cart/cubits/cart_screen_states.dart';
import 'package:lafyuu/features/cart/model/cart_model.dart';
import 'package:lafyuu/features/cart/repository/cart_repository.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(LoddingCart());
  getCartDetails() async {
    final cartDetails = await CartRepository().getCartDetails();
    emit(LoddedCart(cartDetails));
  }
}
