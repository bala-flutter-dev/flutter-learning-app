import 'package:flutter/material.dart';

class BasicWidgets extends StatefulWidget {
  const BasicWidgets({Key? key}) : super(key: key);

  @override
  _BasicWidgetsState createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        Text("Row"),
        Text("Row"),
        Text("Row"),
        Text("Row"),
        Text("Row"),
        Text("Row"),
        Text("Row"),
        Text("Row"),
        Text("ROw"),
        Text("ROw"),
        Text("ROw"),
        Text("ROw"),
        Text("ROw"),
        Text("ROw"),
        Text("ROw"),
      ],
    );
  }
}
