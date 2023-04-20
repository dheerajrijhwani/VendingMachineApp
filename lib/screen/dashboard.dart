import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vending_machine/app/common/app_theme.dart';
import 'package:vending_machine/gen/assets.gen.dart';
import 'package:vending_machine/screen/profile_content.dart';

import '../app/routes/routes.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin {
  @override
  List<String> bannerImage = [
    "assets/images/choclate3.jpg",
    "assets/images/choclate.jpg",
    "assets/images/choclate2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 2,
      vsync: this,
    );
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Color(0xFFF67952),
              size: 25,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: Text("15/2 New Texas"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              "assets/images/Group 218.png",
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0,
                        ),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 5))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Alex Nikiforov",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Fashion Designer",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    // Icon(
                    //   Icons.arrow_forward_ios,
                    //   color: Colors.grey,
                    // )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/myFav.png",
                  height: 40,
                ),
                title: const Text(' Profile  '),
                onTap: () {
                  Get.toNamed(Routes.ProfileContent);
                },
              ),
            ),
            // ListTile(
            //   leading: Image.asset(
            //     "assets/images/wallets.png",
            //     height: 35,
            //   ),
            //   title: const Text(' Wallets  '),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   leading: Image.asset(
            //     "assets/images/myOrders.png",
            //     height: 35,
            //   ),
            //   title: const Text(' My Orders  '),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Aboutus.png",
                  height: 40,
                ),
                title: const Text(' About Us  '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/privacy.png",
                  height: 40,
                ),
                title: const Text(' Privacy Policy  '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/Settings.png",
                  height: 40,
                ),
                title: const Text(' Settings  '),
                onTap: () {
                  Get.toNamed(Routes.settings);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/LogOut.png",
                  height: 40,
                ),
                title: const Text(' Log out  '),
                onTap: () {
                  Get.toNamed(Routes.login);
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // Align(
            //     alignment: Alignment.bottomCenter,
            //     child: Assets.images.logo.image(height: 50))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Text(
              "Explore",
              style: AppthemeData.explore,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Best recommendation for you",
              style: AppthemeData.sub_headerTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppthemeData.themeColor,
                    size: 30,
                  ),
                  suffixIcon: Image.asset(
                    "assets/images/filter.png",
                    height: 10,
                    width: 10,
                  ),
                  alignLabelWithHint: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide:
                        BorderSide(color: Color(0xFFF67952), width: 0.5),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: Image.asset("assets/images/candy.png"),
                  ),
                ),
                Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: Image.asset("assets/images/choco.jpg"),
                  ),
                ),
                Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: Image.asset("assets/images/combo.jpg"),
                  ),
                ),
                Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
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
                    Tab(text: "New Arrivals"),
                    Tab(text: "See All"),
                  ]),
            ),
            SizedBox(
              height: 400,
              child: TabBarView(controller: tabController, children: [
                GridView.builder(
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        // Get.to(ProductDetail());
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 0.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0, top: 0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Image.asset(
                                  "assets/images/choclate2.jpg",
                                  fit: BoxFit.fill,
                                  height: 130,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 140,top: 8),
                            //   child: Icon(Icons.favorite_border,size: 25,),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 140),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Choco Combo",
                                    style: AppthemeData.headerTextStyle_16,
                                  ),
                                  Text("₹165")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Center(child: Text("Out of Stock"))
              ]),
            )
          ],
        ),
      ), //Drawer
    ));
  }
}
