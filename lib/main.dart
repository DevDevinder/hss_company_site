import 'package:flutter/material.dart';
import 'package:hss_company_site/LandingPage/LandingPage.dart';
import 'package:hss_company_site/Navbar/Navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 10, 207, 218),
                Color.fromARGB(255, 157, 40, 240)
              ]),
        ),
        child: Column(
          children: <Widget>[
            Navbar(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: LandingPage(),
            )
          ],
        ),
      ),
    );
  }
}
