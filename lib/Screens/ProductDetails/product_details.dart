import 'package:flutter/material.dart';
import 'package:lafyuu/Model/cardModel.dart';
import 'package:lafyuu/Screens/ProductDetails/carousel_details.dart';

import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/card.dart';

import 'package:lafyuu/Thems/rating_bar.dart';

class ProductDetails extends StatefulWidget {
  // List mycolor = [];
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // List listOfCard = [
  //  CardModel(
  // urlImage: 'assets/images/Picture03.png',
  //  title: 'FS - QUILTED MAXI CROS...',
  //  price: 299.43,
  //   discount: '%25 off ',
  // oldPrice: 536.43,
  // ),
  //  CardModel(
  //   urlImage: 'assets/images/Womenbag.png',
  //   title: 'FS - Nike Air Max 270 React...',
  //_    price: 299.43,
  //   oldPrice: 536.43,
  //    discount: '%25 off ',
  //  ),
  // CardModel(
  //  urlImage: 'assets/images/Womenbag1.png',
  //  title: 'FS - Nike Air Max 270 React...',
  //  price: 299.43,
  // oldPrice: 536.43,
  //  discount: '%25 off ',
  //  ),
  //];
  List listofcolor = [
    Appcolors().myBlue,
    Appcolors().myRed,
    Appcolors().myDark,
    Appcolors().myGreen,
    Appcolors().myGrey,
    Appcolors().myYellow,
  ];
  List listOfSize = [6, 6.5, 7, 7.5, 8, 8.5, 9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            //appBar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    child: const Icon(
                      Icons.arrow_back_ios,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    }),

                //  SizedBox(
                //    width: 10,
                // ),
                const Text(
                  "Nike Air Max 270 Rea...",
                ),
                // SizedBox(
                //  width: 10,
                // ),

                Icon(
                  Icons.search,
                ),

                // SizedBox(
                //  width: 10,
                // ),

                Icon(
                  Icons.more_vert,
                  // Within the SecondRoute widget
                ),
              ],
            ),
            const SizedBox(height: 15),
            CarouselDetails(
              imgList: [
                'assets/images/image1.png',
                'assets/images/image2.png',
                'assets/images/image3.png',
                'assets/images/image4.png',
                'assets/images/image5.png',
              ],
            ),

            Column(
              children: [
                // name and favorite
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      """Nike Air Zoom Pegasus 36
         Miami""",
                    ),
                    const Icon(
                      Icons.favorite_border,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //range

                Row(
                  children: [
                    const Rating(),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
//price
                Row(
                  children: [
                    const Text(
                      "\$230",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            //Size
            Row(
              children: [
                const Text(
                  "Selected Size ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfSize.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Appcolors().myGrey,
                      radius: 31,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Text(
                          '${listOfSize[index]}',
                          style: TextStyle(
                            color: Appcolors().myGrey,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  "Selected Color ",
                ),
              ],
            ),
            Container(
              height: 63,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listofcolor.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    width: 70,
                    //height: 70,
                    // height: 70,
                    decoration: BoxDecoration(
                      //border: Border.all() ,
                      color: listofcolor[index],
                      borderRadius: BorderRadius.circular(
                        70,
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                const Text(
                  "Specification",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Shown:",
                ),
                const Text(
                  """


                                  Laser
               Blue/Anthracite/Watermel
               on/White""",
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "style:",
                ),
                const Text(
                  "  CD0113-400",
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              """
    The Nike Air Max 270 React ENG combines a 
    full-length React foam midsole with a 270 Max Air
    unit for unrivaled comfort and a striking visual
    experience.
            """,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Review product",
                ),
                const Text(
                  "See More",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Rating(),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  "4.5",
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "(5 Review)",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/profile1.png',
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    const Text(
                      "James Lawson",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Rating(),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              """
      air max are always very comfortable fit, clean and 
      just perfect in every way. just the box was too small 
      and scrunched the sneakers up a little bit, not sure if 
      the box was always this small but the 90s are and 
      will always be one of my favorites.
              """,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/Picture02.png',
                  height: 50,
                  width: 50,
                ),
                //
                //
                Image.asset(
                  'assets/images/Picture03.png',
                  height: 50,
                  width: 50,
                ),

                Image.asset(
                  'assets/images/Picture01.png',
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  "December 10, 2016",
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Text(
                  "You Might Also Like ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            //  Row(
            //   children: [
            //   ListView.builder(
            //  shrinkWrap: false,
            //  scrollDirection: Axis.horizontal,
            //  itemCount: 1,
            // itemBuilder: (context, index) {
            //  return
            //
            //   ItemCard(),
            // },
            //),
            //   ],
            //  ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: ItemCard(),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Add Cart ",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
