import 'package:flutter/material.dart';
import 'package:vending_machine/widgets/apptheme.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.menu, color: Color(0xFFF67952), size: 16,

            ), onPressed: () {  },
          );
        }
    ),
    )
    );
  }
}
