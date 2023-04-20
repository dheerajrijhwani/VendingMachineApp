// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? hint;
  final TextEditingController? controller;
  final Color? baseColor;
  final Color? borderColor;
  final Color? errorColor;
  final TextInputType inputType;
  final bool obscureText;
  final Function? validator;
  final Function onChanged;
  final Widget prefixImg;

  const CustomTextField(
      {super.key,
      this.hint,
      this.controller,
      required this.onChanged,
      this.baseColor,
      this.borderColor,
      this.errorColor,
      this.inputType = TextInputType.text,
      this.obscureText = false,
      this.validator,
      required this.prefixImg});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late Color currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = widget.borderColor!;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white, width: 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          obscureText: widget.obscureText,
          onChanged: (text) {},
          controller: widget.controller,
          decoration: InputDecoration(
            // hintStyle: TextStyle(
            //   color: widget.baseColor,
            //   fontFamily: "OpenSans",
            //   fontWeight: FontWeight.w300,
            // ),
            prefixIcon: widget.prefixImg,
            border: InputBorder.none,
            hintText: widget.hint,
          ),
        ),
      ),
    );
  }
}
