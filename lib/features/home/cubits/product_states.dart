import 'package:lafyuu/features/home/model/cardModel.dart';

abstract class ProductState {}

class LoddingState extends ProductState {}

class SuccessState extends ProductState {
  List<CardModel> list;
  SuccessState(this.list);
}

class MyErrorState extends ProductState {}

class NoInternetConnectionState extends ProductState {}
