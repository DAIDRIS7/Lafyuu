import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/Product_Cubit/product_cubit.dart';
import 'package:lafyuu/Cubits/Product_Cubit/product_states.dart';

import 'package:lafyuu/Screens/ProductDetails/product_details.dart';

class ItemCard extends StatelessWidget {
  // List myItem;
  // _ItemCardState(this.myItem);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (BuildContext context) => ProductCubit()..getAllProduct(),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is SuccessState) {
            final myItem = state.list;
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: myItem.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetails(
                          productPrice: myItem[index].price,
                          productName: myItem[index].title,
                          productDescription: myItem[index].description,
                          productBrand: myItem[index].brand,
                          productImages: myItem[index].images,
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
                              "${myItem[index].oldPrice}",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${myItem[index].discount}",
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
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
