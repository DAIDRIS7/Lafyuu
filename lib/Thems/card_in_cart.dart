import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/cart_screen_cubit/cart_screen_cubit.dart';
import 'package:lafyuu/Cubits/cart_screen_cubit/cart_screen_states.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class CardInCartModel extends StatefulWidget {
  final listOfAllDetailsProductInCart;

  const CardInCartModel({Key? key, required this.listOfAllDetailsProductInCart})
      : super(key: key);

  @override
  State<CardInCartModel> createState() => _CardInCartModelState();
}

class _CardInCartModelState extends State<CardInCartModel> {
  final cubit = CartCubit()..getCartDetails();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: widget.listOfAllDetailsProductInCart.products.length,
        itemBuilder: (context, index) {
          final listOfCartsDetails =
              widget.listOfAllDetailsProductInCart.products[index];
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
                            "${listOfCartsDetails.title}",
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
                          "\$ ${listOfCartsDetails.price}",
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
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    listOfCartsDetails.quantity--;
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                color: Appcolors().myGrey,
                                child: Center(
                                  child: Text(
                                    "${listOfCartsDetails.quantity}",
                                  ),
                                ),
                              ),
                              Container(
                                width: 31,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    listOfCartsDetails.quantity++;
                                  },
                                  icon: Icon(
                                    Icons.add,
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
}
