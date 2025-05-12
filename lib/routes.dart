import 'package:flutter/material.dart';
import 'package:grocery_app/pages/cart_page.dart';
import 'package:grocery_app/pages/home_page.dart';
import 'package:grocery_app/pages/wishlist_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (_) => HomePage(),
  '/wishlist': (_) => WishlistPage(),
  '/cart': (_) => CartPage(),
};




// Navigator.pushNamed(context, '/profile');
// Navigator.pushReplacementNamed(context, '/settings');
// Navigator.pop(context);
//
// Navigator.pushNamedAndRemoveUntil(
// context,
// '/notifications',
// (route) => false, // removes all previous routes
// );

// final args = ModalRoute.of(context)!.settings.arguments as YourType;