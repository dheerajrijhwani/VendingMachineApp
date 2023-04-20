import 'package:flutter/material.dart';
import 'package:vending_machine/app/common/app_theme.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton(
      {required this.title, required this.onPressed, Key? key})
      : super(key: key);
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Container(
            height: 55,
            width: 205,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppthemeData.buttoncolor),
            child: Center(
                child: Text(
              title,
              style: AppthemeData.buttonTextstyle,
            ))),
      ),
    );
  }
}
