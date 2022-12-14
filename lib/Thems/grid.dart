import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/features/home/cubits/product_cubit.dart';
import 'package:lafyuu/features/home/cubits/product_states.dart';
import 'package:lafyuu/features/ProductDetails/product_details.dart';
import 'package:lafyuu/Thems/rating_bar.dart';

class ItemCardG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (BuildContext context) => ProductCubit()..getAllProduct(),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is SuccessState) {
            final myItem = state.list;

            return GridView.builder(
              shrinkWrap: true,
              //scrollDirection: Axis.horizontal,
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
                          productBrand: myItem[index].brand,
                          productPrice: myItem[index].price,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 109,
                          width: 109,
                          margin: const EdgeInsets.only(
                            left: 16,
                          ),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                myItem[index].urlImage,
                              ),
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
                        const Rating(),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              """${myItem[index].price}""",
                              style: const TextStyle(
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "${myItem[index].oldPrice}",
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${myItem[index].discount}",
                              style: const TextStyle(
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 0.63,
              ),
            );
          }
          return const Center(child: const CircularProgressIndicator());
        },
      ),
    );
  }
}
