import 'package:flutter/material.dart';
import 'package:flutter_learning_app/Screens/widget_detail.dart';
import 'package:flutter_learning_app/Styles/colors.dart';
import 'package:flutter_learning_app/comman_widgets/alert_box.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  alertBox() {
    return Get.defaultDialog(
      title: 'Make this favourite',
      cancel: ElevatedButton(onPressed: () {}, child: const Text("Cancel")),
      confirm: ElevatedButton(onPressed: () {}, child: const Text("Confirm")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff1a237e),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            //padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      // decoration: BoxDecoration(
                      //     color: const Color(0xfff5f5f5),
                      //     borderRadius: BorderRadius.circular(10)),
                      child: const Text("Settings",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit',
                              color: AppColors.secondaryColor)),
                    ),
                    GestureDetector(
                      onTap: () {
                        alertBox();
                        print("Pressed");
                      },
                      child: const Icon(
                        Icons.settings,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  height: 0,
                  color: AppColors.secondaryColor,
                  thickness: 2,
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  // decoration: BoxDecoration(
                  //     color: const Color(0xff80deea),
                  //     // border: Border.all(color: AppColors.primaryColor1, width: 1),
                  //     borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    const ListTile(
                      leading: Icon(Icons.account_circle, color: Colors.white),
                      title: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ),
                    // Divider(
                    //   height: 0,
                    //   color: Colors.white,
                    //   thickness: 1,
                    // ),
                    const ListTile(
                      leading: Icon(
                        Icons.mode_night_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Theme",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ),
                    // Divider(
                    //   height: 0,
                    //   color: Colors.white,
                    //   thickness: 1,
                    // ),
                    const ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: AppColors.secondaryColor,
                      ),
                      title: Text(
                        "Contact us",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ),
                    // Divider(
                    //   height: 0,
                    //   color: Colors.white,
                    //   thickness: 1,
                    // ),
                    const ListTile(
                      leading: Icon(
                        Icons.bug_report,
                        color: AppColors.secondaryColor,
                      ),
                      title: Text(
                        "Report bug",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation, _) =>
                                      const WidgetDetail(title: 'Text')));
                        },
                        child: Hero(
                            tag: 'text',
                            child: Image.asset("assets/images/Text.png")))
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
