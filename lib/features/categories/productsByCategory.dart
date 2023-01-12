import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/features/categories/cubits/productsbycategory_cubit.dart';
import 'package:lafyuu/features/categories/cubits/product_by_category_cubit/productsbycategory_states.dart';
import 'package:lafyuu/features/ProductDetails/product_details.dart';
import 'package:lafyuu/Thems/rating_bar.dart';

class ProductsByCategory extends StatelessWidget {
  final categoryName;
  const ProductsByCategory({Key? key, this.categoryName}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "$categoryName  Category ",
        ),
      ),
      body: BlocProvider(
        create: (BuildContext context) =>
            ProductsByCategoryCubit()..getProductsByCategory(categoryName),
        child: BlocBuilder<ProductsByCategoryCubit, ProductsByCategoryState>(
            builder: (context, state) {
          if (state is SuccessState) {
            final myItem = state.list;
            return GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: myItem.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetails(
                          productName: myItem[index].title,
                          productImages: myItem[index].images,
                          productDescription: myItem[index].description,
                          productPrice: myItem[index].price,
                          productBrand: myItem[index].brand,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 238,
                    width: 141,
                    margin: const EdgeInsets.only(
                      left: 16,
                    ),
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(
                          0xffEBF0FF,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 109,
                          width: 109,
                          margin: const EdgeInsets.only(),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(myItem[index].thumbnail),
                            ),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          myItem[index].title,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Rating(),
                        Row(
                          children: [
                            Text(
                              """${myItem[index].price}""",
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "${myItem[index].price}",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${myItem[index].discountPercentage}",
                              style: TextStyle(
                                color: Colors.redAccent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
}
