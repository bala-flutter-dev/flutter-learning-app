import 'package:flutter/material.dart';
import 'package:flutter_learning_app/Styles/colors.dart';

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WidgetDetailState createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe0e0e0),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Hero(
                    tag: 'text', child: Image.asset("assets/images/Text.png"))),
            DraggableScrollableSheet(
                builder: (context, controller) => Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: ListView(
                      controller: controller,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Description: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary1,
                                      fontSize: 20)),
                              SizedBox(height: 10),
                              Text(
                                  "The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: 10),
                              Text("Constructors: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary1,
                                      fontSize: 20)),
                              Text(
                                  "The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        )
                      ],
                    ))),
          ],
        ),
        // Column(
        //   children: [
        //     const Text("Detail screen"),
        //     Hero(tag: 'text', child: Image.asset("assets/images/Text.png"))
        //   ],
        // ),
      ),
    );
  }
}
