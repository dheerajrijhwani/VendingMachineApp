import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vending_machine/screen/product_detail.dart';
import 'package:vending_machine/widgets/apptags.dart';
import 'package:vending_machine/widgets/apptheme.dart';

class DashBoard extends StatefulWidget {
   DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin{
  @override


   Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this, );
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: false,
          appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Color(0xFFF67952), size: 25,

              ), onPressed: () {  },
            );
          }
      ),
           title: Container(
             height: 40,
             child: TextFormField(
               decoration: InputDecoration(
                   prefixIcon: Icon(Icons.search,color: AppthemeData.themeColor,size: 30,),
                   suffixIcon: Image.asset("assets/images/filter.png",height: 10,width: 10,),
                   alignLabelWithHint: true,
                   border: const OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(12.0)),),
                   focusedBorder: const OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(12.0)),
                     borderSide: BorderSide(color: Color(0xFFF67952), width: 0.5),
                   )

               ),
             ),
           ),
            centerTitle: true,
            actions: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Image.asset("assets/images/Group 218.png",height: 40,width: 40,),
             )
            ],
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: ListView(
            children: [
   Text("Current Address",style: AppthemeData.headerTextStyle_22,),

     SizedBox(height: 15,),

           SizedBox(height: 650,
           child:
                 GridView.builder(
                   itemCount: 8,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                       (crossAxisCount: 2),
                   itemBuilder: (BuildContext context, int index) {
                     return InkWell(
                       onTap: (){

                       },
                       child: Card(
                         shape: RoundedRectangleBorder(
                           side: BorderSide(color: Colors.black12, width: 0.5),
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Stack(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 0,top: 0),
                               child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                                 child: Image.asset("assets/images/choclate2.jpg",
                                   fit: BoxFit.fill,height: 130,),
                               ),
                             ),
                             // Padding(
                             //   padding: const EdgeInsets.only(left: 140,top: 8),
                             //   child: Icon(Icons.favorite_border,size: 25,),
                             // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 140),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                Text("Choco Combo",style:AppthemeData.headerTextStyle_16,),
                                Text("₹165")
                              ],),
                            ),

                           ],
                         ),
                       ),
                     );
                   },),
                Center(child: Text("Out of Stock"))
               ])
             ,)

            ],
          ),
        ),
      ),
    );
  }
}
