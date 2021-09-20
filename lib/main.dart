import 'package:e_commerce_app/screens/detail.dart';
import 'package:e_commerce_app/screens/home.dart';
import 'package:e_commerce_app/screens/shoping.dart';
import 'package:e_commerce_app/utils/grid_tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter E-Commerce App',
        theme: ThemeData.light(),
        home: Home());
  }
}
