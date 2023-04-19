// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vending_machine/app/modules/signup/views/signup_Screen.dart';

import '../../../common/widgets/Custom_textfield.dart';
import '../../../common/widgets/RectangleButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              "Log in",
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
              hint: " Email",
              inputType: TextInputType.emailAddress,
              // validator: Validator.validateEmail,
              onChanged: () {},
              prefixImg: Image.asset(
                "assets/images/emailPrifix.png",
                height: 22,
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
              hint: " Password",
              // validator: Validator.validatePassword,
              onChanged: () {},
              prefixImg: Image.asset(
                "assets/images/Group 273.png",
                height: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, top: 18, bottom: 18),
                  child: Text(
                    "Forgot password?",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            const SizedBox(),
            RectangleButton(
              OnPressed: () {},
              title: 'Log in',
            ),
            const SizedBox(
              height: 50,
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
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 14),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ));
                  },
                  child: Text(
                    "Sign Up",
                    style:
                        GoogleFonts.aBeeZee(color: Colors.black, fontSize: 14),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
