import 'package:get/get.dart';
import 'package:vending_machine/app/modules/login/bindngs/login_binding.dart';
import 'package:vending_machine/app/modules/login/views/login_Screen.dart';
import 'package:vending_machine/app/modules/signup/views/signup_Screen.dart';
import 'package:vending_machine/app/routes/routes.dart';

class AppPages {
  static const initialRoute = Routes.login;

  static final routes = [
    GetPage(
        name: Routes.login,
        page: () => const LoginScreen(),
        binding: LoginBinding()),
    GetPage(name: Routes.signup, page: () => const SignUpScreen()),
  ];
}
