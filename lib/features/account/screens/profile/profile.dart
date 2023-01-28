import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';
import 'package:lafyuu/features/account/screens/profile/birthday/birthday.dart';
import 'package:lafyuu/features/account/screens/profile/email/email.dart';
import 'package:lafyuu/features/account/screens/profile/name/name.dart';
import 'package:lafyuu/features/account/screens/profile/password/change_password.dart';
import 'package:lafyuu/features/account/screens/profile/phone_number/phone_number.dart';
import 'package:lafyuu/features/account/screens/profile/gender/gender.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
      titleText: ' Profile ',
      body: _bodyWidget(context),
    );
  }
}

Widget _bodyWidget(context) {
  return SafeArea(
    child: Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => MyName())));
          },
          child: _listTileSection(),
        ),
        SizedBox(
          height: 7,
        ),
        _myRow(
          context,
          MyGender(),
          iconName: Icons.female,
          name: 'Gender',
          info: 'male',
        ),
        _myRow(
          context,
          MyBirthDay(),
          iconName: Icons.calendar_today,
          name: 'Birthday',
          info: '2002/6/16',
        ),
        _myRow(
          context,
          MyEmail(),
          iconName: Icons.email,
          name: 'Email',
          info: 'daidris7@gmail.com',
        ),
        _myRow(
          context,
          MyPhoneNumber(),
          iconName: Icons.phone_iphone,
          name: 'Phone Number',
          info: '0922818514',
        ),
        _myRow(
          context,
          ChangePassword(),
          iconName: Icons.lock,
          name: 'Change Password',
          info: '********',
        ),
      ],
    ),
  );
}

_listTileSection() {
  return ListTile(
    leading: Image.asset(
      "assets/images/profile1.png",
    ),
    title: Text(
      "Maximus Gold",
    ),
    subtitle: Text(
      "@mgold",
    ),
  );
}

_myRow(
  context,
  Widget myPage, {
  String? name,
  String? info,
  IconData? iconName,
}) {
  return TextButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => myPage));
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(iconName ?? Icons.lock),
            SizedBox(
              width: 3.5,
            ),
            Text(
              name ?? "DAIDRIS7",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              info ?? "GOAT",
              style: TextStyle(
                color: Appcolors().myGrey,
              ),
            ),
            SizedBox(
              width: 3.5,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Appcolors().myGrey,
            ),
          ],
        ),
      ],
    ),
  );
}
