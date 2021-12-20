import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog {
  static void showErrorDialog(error) {
    Get.defaultDialog(
      title: 'Wanna make this as favourite',
      confirm: ElevatedButton(
          onPressed: () {
            Get.back();
            print("Pressed");
          },
          child: const Text("Yes")),
      cancel: OutlinedButton(
          onPressed: () {
            Get.back();
            print("Pressed");
          },
          child: const Text("No")),
    );
  }
}
