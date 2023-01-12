import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class WriteReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  // Within the SecondRoute widget
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  "Write Review",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Divider(
              color: Color(0xff40BFFF),
            ),
            Text(
              """
            Please write Overall level of satisfaction with 
            your shipping / Delivery Service""",
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text(
                  "Write Your Review",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 150,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 8,
                    // bottom: 150,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Write Your Review Here ',
                ),
              ),
            ),
            Text(
              "Add Photo",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Appcolors().myGrey,
                    ),
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
