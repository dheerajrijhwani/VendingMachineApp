// ignore_for_file: non_constant_identifier_names, unused_local_variable, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton(
      {required this.title, required this.OnPressed, Key? key})
      : super(key: key);
  final String title;
  final Function OnPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        OnPressed();
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
                borderRadius: BorderRadius.circular(25),
                color: Color(0XFFF67952)),
            child: Center(
                child: Text(
              title,
              style: GoogleFonts.aBeeZee(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ))),
      ),
    );
  }
}
