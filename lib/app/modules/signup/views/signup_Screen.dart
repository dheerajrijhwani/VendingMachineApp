// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vending_machine/app/common/widgets/Common_textfield.dart';
import 'package:vending_machine/app/common/widgets/RectangleButton.dart';

import '../../../../screen/botton_navigation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isChecked = false;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/Logo.png",
              height: 62,
              width: 54,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Sign up",
              style: GoogleFonts.aBeeZee(
                  fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 50,
            ),

            //TextField(),
            CustomTextField(
              baseColor: Colors.grey,
              borderColor: Colors.grey[400],
              errorColor: Colors.red,
              //controller: _email,
              hint: "Name",
              inputType: TextInputType.emailAddress,
              // validator: Validator.validateEmail,
              onChanged: () {},
              prefixImg: Image.asset(
                "assets/images/namePrifix.png",
                height: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              baseColor: Colors.grey,
              borderColor: Colors.grey[400],
              errorColor: Colors.red,
              //controller: _password,
              obscureText: true,
              hint: "Email",
              // validator: Validator.validatePassword,
              onChanged: () {},
              prefixImg: Image.asset(
                "assets/images/emailPrifix.png",
                height: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              baseColor: Colors.grey,
              borderColor: Colors.grey[400],
              errorColor: Colors.red,
              //controller: _password,
              obscureText: true,
              hint: "Password",
              // validator: Validator.validatePassword,
              prefixImg: Image.asset(
                "assets/images/Group 273.png",
                height: 20,
              ),
              onChanged: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {},
                ),
                Text(
                  "I accept all the ",
                  style: GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 14),
                ),
                Text(
                  "Terms & Conditions ",
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // LOGIN BUTTON
            RectangleButton(
              OnPressed: () {
                Get.to(BottomNavigation());
              },
              title: 'Sign up',
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 60),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.black.withOpacity(0.3)),
                      height: 2,
                    ),
                  ),
                ),
                Text(
                  "Or",
                  style: GoogleFonts.aBeeZee(),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 60),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.black.withOpacity(0.3)),
                      height: 2,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Image.asset(
                      "assets/images/Group.png",
                      height: 30,
                    ),
                  ),
                ),
                Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Image.asset(
                      "assets/images/google 1.png",
                      height: 30,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 14),
                ),
                Text(
                  "Log in",
                  style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 14),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
