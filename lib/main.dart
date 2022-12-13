import 'package:flutter/material.dart';
import 'package:lafyuu/Cubits/cart_screen_cubit/cart_screen_cubit.dart';
import 'package:lafyuu/Screens/main_.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => CartCubit()..getCartDetails(),
        ),
      ],
      child: MaterialApp(
        home: MainHome(),
      ),
    ),
  );
}
