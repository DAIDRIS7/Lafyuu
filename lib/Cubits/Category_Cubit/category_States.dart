import 'package:lafyuu/Model/categoryModel.dart';

abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryNotFound extends CategoryState {}

class CategorySuccess extends CategoryState {
  List<CategoryModel> list;
  CategorySuccess(this.list);
}
