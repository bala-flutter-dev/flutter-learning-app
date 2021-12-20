import 'package:flutter/material.dart';
import 'package:flutter_learning_app/Screens/home_page.dart';
import 'package:flutter_learning_app/Screens/settings_page.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Kanit'),
      home: const HomePage(),
    );
  }
}
