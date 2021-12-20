import 'package:flutter/material.dart';
import 'package:flutter_learning_app/Styles/colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            child: Center(
                child: Text(
              "Fluttered",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(color: AppColors.primary1),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Catagories",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text("Animations"),
          ),
          ListTile(
            title: Text("Assets"),
          ),
          ListTile(
            title: Text("Basics"),
          ),
          ListTile(
            title: Text("Input"),
          ),
          ListTile(
            title: Text("Layout"),
          ),
          ListTile(
            title: Text("Network"),
          ),
          ListTile(
            title: Text("Scrolling"),
          ),
          ListTile(
            title: Text("Style"),
          ),
        ],
      ),
    );
  }
}
