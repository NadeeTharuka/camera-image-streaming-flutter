import 'package:camera/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // For GetX
import 'package:camera/camera.dart'; // For CameraPreview

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ScanController>(builder: (controller) {
      if (!controller.isInitialized) {
        return Container();
      }
      return SizedBox(
          height: Get.height,
          width: Get.width,
          child: CameraPreview(controller.cameraController));
    });
  }
}
