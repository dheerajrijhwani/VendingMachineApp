import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vending_machine/app/common/app_tags.dart';
import 'package:vending_machine/app/common/app_theme.dart';
import 'package:flutter/cupertino.dart';

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);
  bool switchValue1 = true;
  bool switchValue2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/EmailSupport.png",
                  height: 40,
                ),
                title: const Text('Email Support'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/FAQ.png",
                  height: 40,
                ),
                title: const Text('FAQ'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/privacy.png",
                  height: 40,
                ),
                title: const Text('Privacy Statement'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Notifications.png",
                  height: 40,
                ),
                title: const Text('Notification'),
                trailing: CupertinoSwitch(
                  value: switchValue1,
                  activeColor: AppthemeData.themeColor,
                  onChanged: (value) {},
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Update.png",
                  height: 40,
                ),
                title: const Text('Update'),
                trailing: CupertinoSwitch(
                  value: switchValue2,
                  activeColor: AppthemeData.themeColor,
                  onChanged: (value) {},
                ),
                onTap: () {},
              ),
            )
          ],
        ));
  }
}
