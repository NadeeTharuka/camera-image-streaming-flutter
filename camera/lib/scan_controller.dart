
import 'dart:typed_data';

import 'package:get/state_manager.dart';
import 'package:camera/camera.dart';
import 'package:image/image.dart' as img;


class ScanController extends GetxController {
  final RxBool _isInitialized = RxBool(false);
  late CameraController -cameraController;
  late List<CameraDescription> _cameras;
  late CameraImage _cameraImage;

  bool get isInitialized => _isInitialized.value;
  CameraController get cameraController => _cameraController;

  Future<void> initCamera() async{
    _camera = await availableCameras();
    _cameraController = CameraController(_cameras[0], ResolutionPreset.high);
    _cameraController.initialize().then((_) {
     _isInitialized.value = true;

     _cameraController.startImageStream((image) => _cameraImage = image);

      
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void onInit() {
    _initCamera();
    super.onInit();
  }

  void capture() {
    img.Image image = img.Image.fromBytes(_cameraImage.width,
    _cameraImage.height,
    _cameraImage.planes[0].bytes, format: img.Format.bgra);

    Uint8List jpeg = Uint8List.fromList(img.encodeJpg(image));
    print(jpeg.length);
    print("Image Captured!");

  }
}
