
import 'package:camera/scan_controller.dart';
import 'package:camera_app/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class TopImageViewer extends GetView<ScanController> {
  const TopImageViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ScznController>(
        builder: (controller) => Positioned(
            top: 50,
            child: Container(
              width: Get.width,
              height: 180,
              child: ListView.builder(
                  itemCount: controller?.imageList.length,
                  itemBuilder: (_, index) {}),
                  return
            )), builder: (InvalidType controller) {  },);
  }
}
