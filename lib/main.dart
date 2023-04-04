import 'package:covidapp/screens/home_page.dart';
import 'package:covidapp/screens/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: "Splash",
      routes: {
        "/": (context) => const HomePage(),
        "Splash": (context) => const SplashPage(),
      },
    ),
  );
}
