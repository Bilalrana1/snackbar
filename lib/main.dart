// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snackbar',
      home: Scaffold(
        appBar: AppBar(title: const Text('Snackbar')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: RaisedButton(
                    child: Text('snackbar'),
                    onPressed: () {
                      Get.snackbar(
                        'Snackbar title',
                        "Snackabr message",
                        snackPosition: SnackPosition.TOP,
                        titleText: Text('New snackbar'),
                        messageText: Text(
                          'new mesage',
                          style: TextStyle(color: Colors.white),
                        ),
                        // colorText: Colors.white,
                        backgroundColor: Colors.black,
                        animationDuration: Duration(milliseconds: 4000),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
