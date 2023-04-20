import 'package:get/get.dart';
import 'package:vending_machine/app/modules/signup/controller/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController);
  }
}
