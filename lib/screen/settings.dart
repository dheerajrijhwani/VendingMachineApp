import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vending_machine/widgets/apptags.dart';
import 'package:vending_machine/widgets/apptheme.dart';

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);
  //  RxBool  isToggle = false.obs;
//   RxBool  isSelected = false.obs;
  bool isToggle = false;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
<<<<<<< Updated upstream
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {
        //  Get.back();
        //   },
        // ),
=======
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
>>>>>>> Stashed changes
        centerTitle: true,
        title: Text(
          AppTags.settings,
          style: AppthemeData.headerTextStyle_22,
        ),
      ),
      body: Column(
<<<<<<< Updated upstream
        children: <Widget>[
           ListTile(
=======
        children: [
          ListTile(
>>>>>>> Stashed changes
            title: Text(
              AppTags.emailSupport,
              style: AppthemeData.settingsTitleStyle,
            ),
<<<<<<< Updated upstream
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
           ListTile(
            title: Text(
              AppTags.faq,
              style: AppthemeData.settingsTitleStyle,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
           ListTile(
            title: Text(
              AppTags.privacyStatement,
              style: AppthemeData.settingsTitleStyle,
            ),
            trailing: Icon(
=======
            trailing: const Icon(
>>>>>>> Stashed changes
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          ListTile(
<<<<<<< Updated upstream
              title:  Text(
=======
            title: Text(
              AppTags.faq,
              style: AppthemeData.settingsTitleStyle,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          ListTile(
            title: Text(
              AppTags.privacyStatement,
              style: AppthemeData.settingsTitleStyle,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          ListTile(
              title: Text(
>>>>>>> Stashed changes
                AppTags.notification,
                style: AppthemeData.settingsTitleStyle,
              ),
              trailing: Switch(
                value: isSelected,
                onChanged: (bool value) {},
              )),
<<<<<<< Updated upstream
          // ListTile(
          //     title: const Text(
          //       AppTags.update,
          //       style: AppthemeData.settingsTitleStyle,
          //     ),
          //     trailing: Obx(
          //       () => Switch(
          //         value: isToggle,
          //         onChanged: (bool value) {},
          //       ),
          //     )),
=======
          ListTile(
            title: Text(
              AppTags.update,
              style: AppthemeData.settingsTitleStyle,
            ),
            // trailing:Obx(
            // ()=> Switch(value: isToggle, onChanged: (bool value) {
            //
            //   },
            //
            //   ),
            // )
          ),
>>>>>>> Stashed changes
        ],
      ),
    );
  }
}
