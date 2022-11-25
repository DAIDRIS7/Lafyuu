import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/Product_Cubit/product_cubit.dart';
import 'package:lafyuu/Cubits/Product_Cubit/product_states.dart';
import 'package:lafyuu/Screens/ProductDetails/product_details.dart';

import 'package:lafyuu/Thems/rating_bar.dart';

class ItemCardG extends StatefulWidget {
  @override
  State<ItemCardG> createState() => _ItemCardGState();

  _ItemCardGState() {}
}

class _ItemCardState extends State<ItemCardG> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => ProductCubit()..getAllProduct(),
      child: BlocBuilder(builder: (context, state) {
        if (state is SuccessState) {
          List myItem = state.list;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetails()),
              );
            },
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: myItem.length,
              itemBuilder: (context, index) {
                return Container(
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
                            image: AssetImage(
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
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
            ),
          );
        }
        return CircularProgressIndicator();
      }),
    );
  }
}
