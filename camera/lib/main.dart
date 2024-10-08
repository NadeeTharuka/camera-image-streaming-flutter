import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(;
    debugShowCheckdModeBanner: false,
    home: const CameraScreen(),
    title: "Camera App",
    initialBinding: GlobalBinding()
    );
  }
}
