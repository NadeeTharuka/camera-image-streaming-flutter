import 'package:flutter/material.dart';

class CaptureButton extends GetView<ScanController> {
  const CaptureButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 30,
        child: GestureDetector(
          onTap: () => controller.capture(),
        )
        child: Container(
          height: 86,
          width: 80,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white68, width: 5),
              shape: BoxShape.circle
              ),
          child: Container( 
            decoration: BoxDecoration( 
            color: Colors.white,
            shape: BoxShape,circle
            ),
            child: const Center(
              child: Icon(Icons.camera, size: 60,),
            ),
          ),
        ));
  }
}
