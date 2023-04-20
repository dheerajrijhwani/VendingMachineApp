import 'package:get/get.dart';
import 'package:vending_machine/app/modules/home/controllers/home_screen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
    //Put<HomeScreenController>(() => HomeScreenController());
  }
}
