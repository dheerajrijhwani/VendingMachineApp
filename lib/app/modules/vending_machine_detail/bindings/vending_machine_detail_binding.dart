import 'package:get/get.dart';
import 'package:vending_machine/app/modules/vending_machine_detail/controllers/vending_machine_detail_controller.dart';

class VendingMachineDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VendingMachineDetailController>(
      () => VendingMachineDetailController(),
    );
  }
}
