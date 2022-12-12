import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/ProductsByCategory_Cubit/productsbycategory_states.dart';
import 'package:lafyuu/Model/categoryModel.dart';
import 'package:lafyuu/Repository/category_repository.dart';

class ProductsByCategoryCubit extends Cubit<ProductsByCategoryState> {
  ProductsByCategoryCubit() : super(LoddingState());
  getProductsByCategory(categoryName) async {
    final List<Product> listOfProductsByCategory =
        await CategoryRepository().getProductsByCategory(categoryName);
    emit(SuccessState(listOfProductsByCategory));
  }
}
