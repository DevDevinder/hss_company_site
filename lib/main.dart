import 'package:flutter/material.dart';
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
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container
      (
        decoration: BoxDecoration
        
        (
          gradient: LinearGradient
        (
          begin: Alignment.centerLeft, end:Alignment.centerRight, colors: [Color.fromRGBO(195, 20, 50, 1.0),Color.fromRGBO(36, 11, 54, 1.0)]
        ),
        ),
        child: Column(children: <Widget>[Navbar()],
        ),
      ),
    );
  }
}
