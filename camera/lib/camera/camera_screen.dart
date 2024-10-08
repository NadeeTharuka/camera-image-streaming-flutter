import 'package:camera/camera/capture_button.dart';
import 'package:camera/camera/top_image_viewer.dart';
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
