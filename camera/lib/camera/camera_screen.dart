import 'package:flutter/material.dart';
import 'package:camera_app/scan_controller.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: const [CameraViewer(), CaptureButton(), TopImageViewer()],
    );
  }
}
