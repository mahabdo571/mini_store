import 'package:flutter/material.dart';
import 'package:mini_store/screens/home_page.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {Homepage.routeName: (context) => const Homepage()},
      initialRoute: Homepage.routeName,
    );
  }
}
