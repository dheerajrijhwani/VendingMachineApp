import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vending_machine/app/common/widgets/url_launch.dart';
import 'package:vending_machine/app/modules/home/controllers/home_screen_controller.dart';
import 'package:vending_machine/app/routes/routes.dart';
import 'package:vending_machine/widgets/apptheme.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UrlLaunchers urlLaunchers = UrlLaunchers();
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
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
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
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0,
                        ),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 5))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Alex Nikiforov",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Fashion Designer",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/myFav.png",
                    height: 40,
                  ),
                  title: const Text(' Profile  '),
                  onTap: () {
                    Get.toNamed(Routes.ProfileContent);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/Aboutus.png",
                    height: 40,
                  ),
                  title: const Text(' About Us  '),
                  onTap: () {
                    urlLaunchers.launcher1();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/privacy.png",
                    height: 40,
                  ),
                  title: const Text(' Privacy Policy  '),
                  onTap: () {
                    urlLaunchers.launcher1();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/Settings.png",
                    height: 40,
                  ),
                  title: const Text(' Settings  '),
                  onTap: () {
                    Get.toNamed(Routes.settings);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/LogOut.png",
                    height: 40,
                  ),
                  title: const Text(' Log out  '),
                  onTap: () {
                    Get.toNamed(Routes.login);
                  },
                ),
              )
            ],
          ),
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
