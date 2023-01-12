import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/features/categories/cubits/product_by_category_cubit/productsbycategory_states.dart';
import 'package:lafyuu/features/categories/model/categoryModel.dart';
import 'package:lafyuu/features/categories/repository/category_repository.dart';

class ProductsByCategoryCubit extends Cubit<ProductsByCategoryState> {
  ProductsByCategoryCubit() : super(LoddingState());
  getProductsByCategory(categoryName) async {
    final List<Product> listOfProductsByCategory =
        await CategoryRepository().getProductsByCategory(categoryName);
    emit(SuccessState(listOfProductsByCategory));
  }
}
