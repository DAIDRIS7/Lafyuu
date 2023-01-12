import 'package:lafyuu/features/categories/model/categoryModel.dart';

abstract class ProductsByCategoryState {}

class LoddingState extends ProductsByCategoryState {}

class SuccessState extends ProductsByCategoryState {
  List<Product> list;
  SuccessState(this.list);
}
