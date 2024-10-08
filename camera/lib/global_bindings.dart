import 'package:camera/scan_controller.dart';
import 'package:camera_app/scan_controller.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanController>(() => ScanController());
  }
}
