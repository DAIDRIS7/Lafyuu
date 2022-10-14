import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: 60),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            SizedBox(height: 10),
            Text(
              "Welcome to Lafyuu",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10),
            Text("Sign in to continue "),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: ("Your Email "),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff9098B1),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: ("Your Password "),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff9098B1),
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Sign in "),
              ),
            ),
            Row(children: <Widget>[
              Expanded(child: Divider()),
              Text("OR"),
              Expanded(child: Divider()),
            ]),
            Container(
              margin: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Log in with Google "),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.face),
                label: Text("Log in with Facebook "),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Forget Password?"),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Do you have an account?"),
              TextButton(
                onPressed: () {},
                child: Text("Register "),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
