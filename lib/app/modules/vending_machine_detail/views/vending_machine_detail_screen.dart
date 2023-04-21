import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vending_machine/app/common/app_theme.dart';
import 'package:vending_machine/app/common/widgets/custom_app_bar.dart';
import 'package:vending_machine/app/modules/vending_machine_detail/controllers/vending_machine_detail_controller.dart';
import 'package:vending_machine/app/routes/routes.dart';

class VendingMachineDetailScreen
    extends GetView<VendingMachineDetailController> {
  const VendingMachineDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: CustomAppBar(
            leadingWidget: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            txt: "Vending Machine Detail",
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                removeBottom: true,
                removeLeft: true,
                removeRight: true,
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      //childAspectRatio: 2 / 2.3,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(Routes.successScreen);
                      //  Get.toNamed(Routes.scanQr);
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
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Text(
                                  "Article : ${controller.count.value}",
                                  style: AppthemeData.settingsTitleStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
