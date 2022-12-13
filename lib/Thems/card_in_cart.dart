import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class CardInCartModel extends StatelessWidget {
  Widget build(BuildContext context) {
    return 
       Container(
        height: 104,
        width: 343,
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 215, 221, 237)),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Row(children: [
          Image.asset(
            "assets/images/image1.png",
            width: 75,
            height: 75,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "title",
                    style: TextStyle(
                        //  height: 56,
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
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      border: Border.all(
                          color: Color.fromARGB(255, 215, 221, 237)),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 32,
                        ),
                        Container(
                          width: 40,
                          color: Colors.deepPurpleAccent,
                        ),
                        Container(
                          width: 32,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
