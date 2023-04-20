import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vending_machine/app/modules/home/controllers/home_screen_controller.dart';
import 'package:vending_machine/app/routes/routes.dart';
import 'package:vending_machine/widgets/apptheme.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Color(0xFFF67952),
                size: 25,
              ),
              onPressed: () {},
            );
          }),
          title: TextFormField(
            cursorColor: AppthemeData.themeColor,
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: AppthemeData.themeColor,
                  size: 24,
                ),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Color(0xFFF67952), width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Color(0xFFF67952), width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Color(0xFFF67952), width: 0.5),
                )),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/images/Group 218.png",
                height: 40,
                width: 40,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Current Address",
                style: AppthemeData.settingsTitleStyle,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Obx(() => controller.currentAddress.value != ""
                    ? Text(controller.currentAddress.value ?? '')
                    : const Text("Address")),
              ),
              Expanded(
                flex: 1,
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      childAspectRatio: 2 / 2.3,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(Routes.vendingMachineDetail);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.black12, width: 0.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  topLeft: Radius.circular(12)),
                              child: Image.asset(
                                "assets/images/choclate2.jpg",
                                fit: BoxFit.fill,
                                height: 130,
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 12.0),
                                child: Text(
                                  "Vending Machine",
                                  style: AppthemeData.font14Weight500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
