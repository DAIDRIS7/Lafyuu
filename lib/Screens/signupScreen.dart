import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 60),
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
          ),
          const Text("Let's Get Started "),
          const SizedBox(height: 10),
          const Text("Create new an account "),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.all(12),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: ("Full Name "),
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.account_circle),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: ("Your Email "),
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.email),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: ("Password "),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: ("Password again "),
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Sign up"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("Have an account?"),
              TextButton(
                onPressed: () {},
                child: const Text("Sign in "),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
