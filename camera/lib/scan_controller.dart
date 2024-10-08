import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class ScanController extends GetxController {
  final RxBool _isInitialized = RxBool(false);

  bool get isInitialized => _isInitialized.value;

  Future<void> initCamera() {}

  @override
  void onInit() {
    super.onInit();
  }
}
