import 'package:lafyuu/Model/categoryModel.dart';

abstract class ProductsByCategoryState {}

class LoddingState extends ProductsByCategoryState {}

class SuccessState extends ProductsByCategoryState {
  List<Product> list;
  SuccessState(this.list);
}
