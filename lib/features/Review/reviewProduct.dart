import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/features/Review/writeReview.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/rating_bar.dart';

class ReviewProduct extends StatelessWidget {
  List i = [
    1,
    2,
    3,
    4,
    5,
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                ),
                const Text(
                  "5 Review",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: i.length,
                itemBuilder: (BuildContext context, int index) {
                  return index == 0
                      ? Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          margin: EdgeInsets.all(
                            8,
                          ),
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Text(
                              "All Reviews ",
                              style: TextStyle(
                                color: Appcolors().myBlue,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          margin: EdgeInsets.all(
                            10,
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.star,
                                color: Appcolors().myYellow,
                              ),
                              Text(
                                "${i[index]}",
                              ),
                            ],
                          ),
                        );
                },
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/images/profile1.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
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
                    SizedBox(
                      height: 5,
                    ),
                    const Rating(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              """
    air max are always very comfortable fit, clean and
    just perfect in every way. just the box was too small
    and scrunched the sneakers up a little bit, not sure if 
    the box was always this small but the 90s are and 
    will always be one of my favorites.""",
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/images/Picture02.png",
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  "assets/images/Picture01.png",
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  "assets/images/Picture03.png",
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "December 10, 2016",
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/images/profile2.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(
                      "Laura Octavian",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Rating(),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              """
    This is really amazing product, i like the design of
    product, I hope can buy it again!""",
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("December 10, 2016"),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/images/profile4.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Text(
                      "Jhonson Bridge",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Rating(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              """
    air max are always very comfortable fit, clean and
    just perfect in every way. just the box was too small 
    and scrunched the sneakers up a little bit""",
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "December 10, 2016",
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/images/profile3.png",
                  height: 50,
                  width: 50,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Griffin Rod",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Rating(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              """
    air max are always very comfortable fit, clean and 
    just perfect in every way. just the box was too small  """,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/images/Picture02.png",
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  "assets/images/Picture01.png",
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "December 10, 2016",
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                // Within the `FirstRoute` widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WriteReview()),
                  );
                },
                child: Text(
                  "Write Review",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
