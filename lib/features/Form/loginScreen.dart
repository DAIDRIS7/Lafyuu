import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:lafyuu/features/Form/signupScreen.dart';
import 'package:lafyuu/features/main_home/main_.dart';

import 'package:shared_preferences/shared_preferences.dart';

// ignore: prefer_typing_uninitialized_variables
//Object? access;

class Login extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            // width: MediaQuery.of(context).size.width,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 60),
                  Image.asset(
                    'assets/images/Icon.png',
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
                      validator: (value) {
                        if (value!.isEmpty ||
                            value.isNotEmpty &&
                                !value.contains(
                                  "@",
                                )) {
                          return "Invalid Email";
                        }
                      },
                      controller: _emailController,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Invalid password ";
                        }
                      },
                      controller: _passwordController,
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
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          loginn(context);
                        }

                        //login();
                      },
                      child: Text("Sign in "),
                    ),
                  ),
                  Row(children: <Widget>[
                    Expanded(child: Divider()),
                    Text("OR"),
                    Expanded(child: Divider()),
                  ]),
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.FacebookNew,
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Forget Password?"),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Do you have an account?"),
                    TextButton(
                      // Within the `FirstRoute` widget
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Registration(),
                          ),
                        );
                      },
                      child: Text("Register "),
                    ),
                  ]),
                ]),
          ),
        ),
      ),
    );
  }

  void _completeLogin(context) {
    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (context) => MainHome(),
      ),
    );
  }

  void loginn(context) async {
    try {
      final response =
          await Dio().post("https://api.escuelajs.co/api/v1/auth/login", data: {
        "email": _emailController.text,
        "password": _passwordController.text,
      });
      print("my response is : $response");

      final accessToken = response.data['access_token'];
      //  _completeLogin();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('MyaccessToken', accessToken);
      final access = prefs.get('MyaccessToken');
      print('MyaccessToken:$access');
      _completeLogin(context);
    } on DioError catch (e) {
      if (e.response!.statusCode == 401) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "You should enter valid email and password",
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
