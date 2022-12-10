import 'package:flutter_bloc/flutter_bloc.dart';
class ProductsByCategoryCubit extends Cubit <ProductsByCategoryState >{
    ProductByCategoryCubit ():super (LoddingState);
   getProductsByCategory ()async{
       final listOfProductByCategory = await getProductsByCategory;
       emit (SuccessState (listOfProductsByCategory));
   }
}