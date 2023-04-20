import 'package:flutter/material.dart';
import 'package:vending_machine/widgets/apptheme.dart';

class CustomAppBar extends StatelessWidget {
  final String txt;
  final Widget leadingWidget;
  const CustomAppBar({
    super.key,
    required this.txt,
    required this.leadingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: leadingWidget,
      centerTitle: true,
      title: Text(txt, style: AppthemeData.headerTextStyle_16),
    );
  }
}
