import 'package:get/get.dart';
import 'package:vending_machine/app/modules/home/bindings/home_screen_binding.dart';
import 'package:vending_machine/app/modules/login/bindngs/login_binding.dart';
import 'package:vending_machine/app/modules/login/views/login_Screen.dart';
import 'package:vending_machine/app/modules/scan_qr/bindings/scan_qr_binding.dart';
import 'package:vending_machine/app/modules/scan_qr/views/scan_qr_screen.dart';
import 'package:vending_machine/app/modules/signup/bindings/signup_binding.dart';
import 'package:vending_machine/app/modules/signup/views/signup_Screen.dart';
import 'package:vending_machine/app/modules/vending_machine_detail/bindings/vending_machine_detail_binding.dart';
import 'package:vending_machine/app/modules/vending_machine_detail/controllers/vending_machine_detail_controller.dart';
import 'package:vending_machine/app/modules/vending_machine_detail/views/vending_machine_detail_screen.dart';
import 'package:vending_machine/app/routes/routes.dart';
import 'package:vending_machine/screen/botton_navigation.dart';
import 'package:vending_machine/screen/profile_content.dart';
import 'package:vending_machine/screen/settings.dart';

import '../modules/home/views/home_screen.dart';

class AppPages {
  static const initialRoute = Routes.login;

  static final routes = [
    GetPage(
        name: Routes.login,
        page: () => const LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: Routes.signup,
        page: () => const SignUpScreen(),
        binding: SignupBinding()),
    GetPage(name: Routes.settings, page: () => Settings()),
    GetPage(
      name: Routes.ProfileContent,
      page: () => ProfileContent(),
    ),
    GetPage(
        name: Routes.home,
        page: () => const HomeScreen(),
        binding: HomeScreenBinding()),
    GetPage(
      name: Routes.vendingMachineDetail,
      page: () => VendingMachineDetailScreen(),
      binding: VendingMachineDetailBinding(),
    ),
    GetPage(
        name: Routes.scanQr,
        page: () => const ScanQrScreen(),
        binding: ScanQrBinding()),
  ];
}
