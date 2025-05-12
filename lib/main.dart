import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/features/wishlist/wishlist_bloc.dart';
import 'package:grocery_app/routes.dart';
import 'features/cart/cart_bloc.dart';


void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => CartBloc(),
      ),
      BlocProvider(
        create: (context) => WishlistBloc(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      theme: ThemeData(primarySwatch: Colors.green),
      // home: HomePage(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
