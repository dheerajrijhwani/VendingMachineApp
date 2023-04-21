import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:vending_machine/app/common/app_theme.dart';
import 'package:vending_machine/app/common/widgets/RectangleButton.dart';
import '../app/modules/home/views/home_screen.dart';
import '../app/routes/routes.dart';

class SuccessScreen extends StatefulWidget {
  SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
    children: [
    Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
    children: [
    InkWell(
    child: const Icon(
    Icons.arrow_back,
    color: Colors.black,
    size: 30,
    ),
    onTap: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) =>HomeScreen ()));
    },
    ),
    ],
    ),
    ),
    const SizedBox(
    height: 50,
    ),
    Center(
    child:Lottie.network('https://assets8.lottiefiles.com/packages/lf20_ugmdpzdr.json'),

    ),

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: RectangleButton(title: "Back to Home", OnPressed: (){
          Get.toNamed(Routes.home);
        }),
      )
    ],
    ),
    );
  }
}
