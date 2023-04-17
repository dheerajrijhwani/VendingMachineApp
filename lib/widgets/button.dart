import 'package:flutter/material.dart';
import 'package:vending_machine/widgets/apptheme.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton({ required this.title,required this.OnPressed,Key? key}) : super(key: key);
  final String title;
  final Function OnPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        OnPressed();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,),
        child: Container(
            height: 55,
            width: 205,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),color:AppthemeData.buttoncolor
            ),
            child: Center(child: Text(title,style: AppthemeData.buttonTextstyle,))
        ),
      ),
    );
  }
}
