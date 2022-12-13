import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class CardInCartModel extends StatelessWidget {
  Widget build(BuildContext context) {
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
                      "title",
                      style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 12,
                        //  height: 56,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.favorite),
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
                    "\$230",
                    style: TextStyle(
                      color: Appcolors().myBlue,
                    ),
                  ),
                  Container(
                    width: 104,
                    height: 24,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 215, 221, 237)),
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
                            icon: Icon(
                              Icons.add,
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          color: Appcolors().myGrey,
                          child: Text(
                            "1",
                          ),
                        ),
                        Container(
                          width: 31,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
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
  }
}
