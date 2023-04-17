import 'package:flutter/material.dart';
import 'package:vending_machine/widgets/apptags.dart';
import 'package:vending_machine/widgets/apptheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(AppTags.favorites,style: AppthemeData.headerTextStyle_22,),
      ),
      body: Center(child: Text("HomeScreen")),
    );
  }
}
