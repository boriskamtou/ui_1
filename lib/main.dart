import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui_1/src/screens/product_overview.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI_1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.orangeAccent,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductOverViewScreen(),
      routes: {
        ProductOverViewScreen.routeName: (context) => ProductOverViewScreen(),
      },
    );
  }
}
