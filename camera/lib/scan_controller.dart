
import 'package:get/state_manager.dart';
import 'package:camera/camera.dart';


class ScanController extends GetxController {
  final RxBool _isInitialized = RxBool(false);
  late CameraController -cameraController;
  late List<CameraDescription> _cameras;

  bool get isInitialized => _isInitialized.value;
  CameraController get cameraController => _cameraController;

  Future<void> initCamera() async{
    _camera = await availableCameras();
    _cameraController = CameraController(_cameras[0], ResolutionPreset.max);
    _cameraController.initialize().then((_) {
     _isInitialized.value = true;

     _cameraController.startImageStream((image) => print(DateTime.now().millisecondsSinceEpoch))
     
      
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

  }
}
