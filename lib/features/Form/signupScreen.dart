import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:lafyuu/features/Form/loginScreen.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController secondpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formkey,
        child: SizedBox(
          //   height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    'assets/images/Icon.png',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Let's Get Started ",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Create new an account ",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      12,
                    ),
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value!.isNotEmpty && value.length > 2) {
                          return null;
                        } else if (value.length < 3 && value.isNotEmpty) {
                          return 'No way your name is that short';
                        } else {
                          return 'Please give us your name already';
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: ("Full Name"),
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.account_circle),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(12),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isNotEmpty && value.length > 2) {
                          return null;
                        } else if (value.length < 3 && value.isNotEmpty) {
                          return 'ppassword must be big than 8';
                        } else {
                          return 'Please enter  your papassword';
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: ("Your Email"),
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      12,
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isNotEmpty && value.length > 2) {
                          return null;
                        } else if (value.length < 3 && value.isNotEmpty) {
                          return 'password must be big than 8';
                        } else {
                          return 'Please enter your password';
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: ("Password"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      12,
                    ),
                    child: TextFormField(
                      controller: secondpasswordController,
                      validator: (value) {
                        if (value!.isNotEmpty && value.length > 2) {
                          return null;
                        } else if (value.length < 3 && value.isNotEmpty) {
                          return 'No way your name is that short';
                        } else {
                          return 'Please give us your name already';
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: ("Password again"),
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      12,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        if (!_formkey.currentState!.validate()) {
                          return;
                        }
                        signn();

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Got your information!"),
                        ));
                      },
                      child: const Text(
                        "Sign up",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      12,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Have an account?",
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => Login(),
                                ),
                              );
                            },
                            child: const Text(
                              "Sign in ",
                            ),
                          ),
                        ]),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  void _completeRegistrion() {
    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (context) => Login(),
      ),
    );
  }

  signn() async {
    try {
      final response =
          await Dio().post("https://api.escuelajs.co/api/v1/users/", data: {
        "name": nameController.text,
        "email": emailController.text,
        "password": passwordController.text,
        "avatar": "https://api.lorem.space/image/face?w=640&h=480"
      });
      _completeRegistrion();
    } on DioError catch (e) {
      return Scaffold(
        body: Center(
          child: Text("This is an error:${e.response}"),
        ),
      );
    }
  }
}
