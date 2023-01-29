import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class Offers extends StatefulWidget {
  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Offers ',
          style: TextStyle(
            color: Appcolors().myDark,
          ),
        ),
        elevation: 1,
        backgroundColor: Appcolors().myWhite,
      ),
      body: _bodyWidget(context),
    );
  }
}

_bodyWidget(context) {
  return SafeArea(
    child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 63,
          padding: EdgeInsets.all(
            7,
          ),
          margin: EdgeInsets.all(
            7,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Appcolors().myBlue,
            ),
            color: Appcolors().myBlue,
            borderRadius: BorderRadius.circular(
              7,
            ),
          ),
          child: Text(
            """Use “MEGSL” Cupon For Get 90%off""",
            style: TextStyle(
              color: Appcolors().myWhite,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/image1.png',
                // width: MediaQuery.of(context).size.width,
              ),
              //scale: 1,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    """Super Flash Sale

50% Off""",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 40,
                    width: 41,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "08",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 21,
                    width: 4,
                    child: Text(
                      ":",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    width: 41,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "34",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 21,
                    width: 4,
                    child: Text(
                      ":",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    width: 41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "52",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Stack(children: [
          Container(
            color: Colors.blue,
            child: Image.asset('assets/images/image6.png'),
          ),
          const Positioned(
            bottom: 60.0,
            left: 50.0,
            child: Text(
              """Recomended
Product""",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
              bottom: 30.0,
              left: 50.0,
              child: Text(
                "We Recommended the best for you",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ]),
      ],
    ),
  );
}
