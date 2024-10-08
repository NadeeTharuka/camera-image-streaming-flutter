import 'package:flutter/material.dart';

class CaptureButton extends StatelessWidget {
  const CaptureButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 30,
        child: Container(
          height: 86,
          width: 80,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white68, width: 5),
              shape: BoxShape.circle),
          child: Container(
            color: Colors.white,
            decoration: BoxDecoration(color: Colors.white),
          ),
        ));
  }
}
