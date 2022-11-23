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
            const SizedBox(height: 60),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            const Text(
              "Welcome to Lafyuu",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            const Text("Sign in to continue "),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
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
              margin: const EdgeInsets.all(12),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
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
              margin: const EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Sign in "),
              ),
            ),
            Row(children: <Widget>[
              const Expanded(child: Divider()),
              const Text("OR"),
              const Expanded(child: const Divider()),
            ]),
            Container(
              margin: const EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Log in with Google "),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.face),
                label: const Text("Log in with Facebook "),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Forget Password?"),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("Do you have an account?"),
              TextButton(
                onPressed: () {},
                child: const Text("Register "),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
