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
          width: 15,
        ),
        Container(
          width: 250,
          // width: MediaQuery.of(context).size.width,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 158,
                    child: Text(
                      "title",
                      style: TextStyle(
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
              SizedBox(
                height: 10,
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
                        ),
                        Container(
                          width: 40,
                          color: Colors.deepPurpleAccent,
                        ),
                        Container(
                          width: 31,
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
