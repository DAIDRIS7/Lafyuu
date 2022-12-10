import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/ProductsByCategory_Cubit/productsbycategory_states.dart';
import 'package:lafyuu/Model/categoryModel.dart';

class ProductsByCategoryCubit extends Cubit<ProductsByCategoryState> {
  ProductsByCategoryCubit(LoddingState) : super(LoddingState);
  getProductsByCategory() async {
    final List<Product> listOfProductsByCategory =
        await getProductsByCategory();
    emit(SuccessState(listOfProductsByCategory));
  }
}
