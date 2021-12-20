import 'package:flutter/material.dart';
import 'package:flutter_learning_app/screens/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Kanit'),
      home: const HomePage(),
    );
  }
}
