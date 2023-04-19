import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vending_machine/app/common/app_tags.dart';
import 'package:vending_machine/app/common/app_theme.dart';

class Settings extends StatelessWidget {
   Settings({Key? key}) : super(key: key);
 //  RxBool  isToggle = false.obs;
//   RxBool  isSelected = false.obs;
  bool isToggle = false;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
       leading: IconButton(
         icon: const Icon(
           Icons.arrow_back,
           color: Colors.black,
         ),
         onPressed: () {
        Get.back();
         },
       ),
       centerTitle: true,
       title: Text(
         AppTags.settings,
         style: AppthemeData.headerTextStyle_22,
       ),
     ),
     body: Column(
       children: [
         ListTile(
           title: Text(
             AppTags.emailSupport,
             style: AppthemeData.settingsTitleStyle,
           ),
           trailing: const Icon(
             Icons.arrow_forward_ios,
             size: 18,
           ),
         ),

         ListTile(
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
             AppTags.notification,
             style: AppthemeData.settingsTitleStyle,
           ),
           trailing: Switch(value: isSelected,onChanged: (bool value){

           },)
         ),

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
       ],
     ),
    );
  }
}
