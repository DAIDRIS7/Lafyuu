import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/features/cart/cubits/cart_screen_cubit.dart';
import 'package:lafyuu/features/splash/splash_screen.dart';

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
        home: SplashScreen(),
      ),
    ),
  );
}
