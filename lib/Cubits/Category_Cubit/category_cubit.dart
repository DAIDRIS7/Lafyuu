import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/Category_Cubit/category_States.dart';
import 'package:lafyuu/Model/categoryModel.dart';
import 'package:lafyuu/Repository/category_repository.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(CategoryState CategoryInitial) : super(CategoryInitial);
  getAllCategories() async {
    final List<CategoryModel> listOfCategory = await fetchCategory();
    emit(CategorySuccess(listOfCategory));
  }
}
