import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class VersionPage extends StatelessWidget {
  const VersionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: const Text("App Info"),
        gradient: const LinearGradient(colors: [
          Color(0xff1a237e),
          Color(0xff303f9f),
          Color(0xff3f51b5),
        ]),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.details),
            )
          ],
        ),
      ),
    );
  }
}
