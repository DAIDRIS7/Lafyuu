import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/product_details.dart';
import 'package:lafyuu/Model/cardModel.dart';

class ItemCard extends StatefulWidget {
  //const ItemCard({Key? key}) : super(key: key);
  //List cardProduct;
  List myItems;
  ItemCard(this.myItems);

  //ItemCard({Key? key, required this.myItems}) : super(key: key);
  @override
  State<ItemCard> createState() => _ItemCardState(myItems);
}

class _ItemCardState extends State<ItemCard> {
  List myItem;
  _ItemCardState(this.myItem);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetails()),
        );
      },
      child: ListView.builder(
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
      ),
    );
  }
}
