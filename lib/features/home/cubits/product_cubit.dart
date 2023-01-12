import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/features/home/cubits/product_states.dart';
import 'package:lafyuu/features/home/model/cardModel.dart';
import 'package:lafyuu/features/home/repository/product_repository.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(LoddingState());

  getAllProduct() async {
    final List<CardModel> listOfProduct =
        await ProductRepository().getAllProduct();
    // emit(SuccessState(listOfProduct));
    emit(SuccessState(listOfProduct));
  }
}
