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
  List<String> bannerImage = [
    "assets/images/choclate3.jpg",
    "assets/images/choclate.jpg",
    "assets/images/choclate2.jpg",

  ];

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
           title: Text("15/2 New Texas"),
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
              Text("Explore",style: AppthemeData.explore,),
            SizedBox(height: 10,),
            Text("Best recommendation for you",style: AppthemeData.sub_headerTextStyle,),
              SizedBox(height: 20,),
            TextFormField(
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
     SizedBox(height: 15,),

         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Container(
               height: 60,
               width: 80,
               decoration: BoxDecoration(
                 border: Border.all(),
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Container(
                 child: Image.asset("assets/images/candy.png"),
               ),
             ),
             Container(
               height: 60,
               width: 80,
               decoration: BoxDecoration(
                   border: Border.all(),
                   borderRadius: BorderRadius.circular(10)
               ),
               child: Container(
                 child: Image.asset("assets/images/choco.jpg"),
               ),
             ),
             Container(
               height: 60,
               width: 80,
               decoration: BoxDecoration(
                   border: Border.all(),
                   borderRadius: BorderRadius.circular(10)
               ),
               child: Container(
                 child: Image.asset("assets/images/combo.jpg"),
               ),
             ),
             Container(
               height: 60,
               width: 80,
               decoration: BoxDecoration(
                   border: Border.all(),
                   borderRadius: BorderRadius.circular(10)
               ),
               child: Container(
                 child: Image.asset("assets/images/cc.png"),
               ),
             )
           ],
         ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TabBar(
                    controller: tabController,
                                      labelColor: Color(0xFFF67952),
                                      unselectedLabelColor: Color(0xFF004664),
                                      indicatorColor: Color(0xFFF67952),
                                      indicatorSize: TabBarIndicatorSize.label,
                                      padding: EdgeInsets.only(left: 15),
                                      indicatorPadding: EdgeInsets.zero,
                                      labelPadding: EdgeInsets.symmetric(horizontal: 40),
                                      isScrollable: true,
                                      labelStyle: AppthemeData.headerTextStyle_16,
                                      tabs: [
                                        Tab(text:"New Arrivals" ),
                                        Tab(text:"See All" ),

                                  ]),
              ),
           SizedBox(height: 400,
           child:TabBarView(
               controller: tabController,
               children: [
                 GridView.builder(
                   itemCount: 8,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                       (crossAxisCount: 2),
                   itemBuilder: (BuildContext context, int index) {
                     return InkWell(
                       onTap: (){
                         Get.to(ProductDetail());
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
