import 'package:flutter/material.dart';
import 'package:lafyuu/Repository/product_repository.dart';

abstract class ProductState {}

class LoddingState extends ProductState {}

class SuccessState extends ProductState {
  List<ProductRepository> list;
  SuccessState(this.list);
}

class MyErrorState extends ProductState {}

class NoInternetConnectionState extends ProductState {}
