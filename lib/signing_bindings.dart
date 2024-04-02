import 'package:foodfly/signing_controller.dart';
import 'package:get/instance_manager.dart';

class SigningBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigningController());
  }
}
