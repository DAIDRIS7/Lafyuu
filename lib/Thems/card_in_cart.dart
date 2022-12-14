import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/cart_screen_cubit/cart_screen_cubit.dart';
import 'package:lafyuu/Cubits/cart_screen_cubit/cart_screen_states.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class CardInCartModel extends StatefulWidget {
  @override
  State<CardInCartModel> createState() => _CardInCartModelState();
}

class _CardInCartModelState extends State<CardInCartModel> {
  initState() {
    super.initState();
    context.read<CartCubit>().getCartDetails();
  }

  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartStates>(builder: (context, state) {
      if (state is LoddingCart) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is LoddedCart) {
        final listOfCartsDetails = state.list;

        return ListView.builder(
            shrinkWrap: true,
            itemCount: listOfCartsDetails.length,
            itemBuilder: (context, index) {
              return Container(
                height: 104,
                width: 343,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 215, 221, 237)),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Row(//scrollDirection: Axis.horizontal,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Container(
                    width: 72,
                    color: Colors.red,
                    child: Image.asset(
                      "assets/images/image1.png",
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 262,
                    // width: MediaQuery.of(context).size.width,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 168,
                              child: Text(
                                "${listOfCartsDetails[index].title}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12,
                                  //  height: 56,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.favorite_border),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.delete),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$ ${listOfCartsDetails[index].price}",
                              style: TextStyle(
                                color: Appcolors().myBlue,
                              ),
                            ),
                            Container(
                              width: 104,
                              height: 24,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 215, 221, 237)),
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 31,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Center(
                                        child: Icon(
                                          Icons.remove,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    color: Appcolors().myGrey,
                                    child: Center(
                                      child: Text(
                                        "1",
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 31,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              );
            });
      }
      return Center(
        child: Text(
          "Try again later ",
        ),
      );
    });
  }
}
