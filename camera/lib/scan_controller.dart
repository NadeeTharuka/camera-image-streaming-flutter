
import 'package:get/state_manager.dart';
import 'package:camera/camera.dart';


class ScanController extends GetxController {
  final RxBool _isInitialized = RxBool(false);
  late CameraController -cameraController;
  late List<CameraDescription> _cameras;

  bool get isInitialized => _isInitialized.value;

  Future<void> initCamera() async{
    _camera = await availableCameras();
    _cameraController = CameraController(_cameras[0], ResolutionPreset.max);
    _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      
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
    super.onInit();
  }
}
