import 'package:flutter/material.dart';

class AppthemeData {
  //Color
  static const themeColor = Color(0xFFF67952);

  //Botton
  static const buttoncolor = Color(0xFFF67952);

  //TextStyle
  static final buttonTextstyle = const TextStyle(
    color: Colors.white,
    fontFamily: "Poppins Medium",
  );
  static const headerTextStyle_16 = TextStyle(
      color: Color(0xFF333333),
      fontFamily: "Poppins Medium",
      fontSize: 16,
      fontWeight: FontWeight.w600);
  static final headerTextStyle_22 = const TextStyle(
      color: Color(0xFF333333),
      fontFamily: "Poppins Medium",
      fontSize: 22,
      fontWeight: FontWeight.w600);
  static final sub_headerTextStyle = TextStyle(
      color: const Color(0xFF333333).withOpacity(0.5),
      fontFamily: "Poppins Medium",
      fontSize: 16,
      fontWeight: FontWeight.w600);
  static const settingsTitleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xFF666666),
  );
}
