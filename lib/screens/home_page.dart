import 'package:flutter/material.dart';
import 'package:flutter_learning_app/comman_widgets/bottom_navigation.dart';
import 'package:flutter_learning_app/comman_widgets/drawer.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController myTabController;

  @override
  void initState() {
    myTabController = TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavigation(),
        appBar: NewGradientAppBar(
          title: const Text("Fluttered"),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.search),
            )
          ],
          gradient: const LinearGradient(colors: [
            Color(0xff1a237e),
            Color(0xff303f9f),
            Color(0xff3f51b5),
          ]),
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: myTabController,
            tabs: const [
              Tab(
                text: 'Basics',
              ),
              Tab(
                text: 'Intermediate',
              ),
              Tab(
                text: 'Advanced',
              ),
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: Container(),
      ),
    );
  }
}
