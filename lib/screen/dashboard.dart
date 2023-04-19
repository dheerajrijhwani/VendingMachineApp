import 'package:flutter/material.dart';

<<<<<<< Updated upstream
class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        drawer: Drawer(
=======
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
              onPressed: () {},
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
>>>>>>> Stashed changes
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
<<<<<<< Updated upstream
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.orange.shade700,
                      child: Image.network(
                        "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg",
                      ),
                    ),
                    SizedBox(
                      width: 10,
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
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/myFav.png",
                  height: 35,
                ),
                title: const Text(' My Favorites '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/wallets.png",
                  height: 35,
                ),
                title: const Text(' Wallets  '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/myOrders.png",
                  height: 35,
                ),
                title: const Text(' My Orders  '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/Aboutus.png",
                  height: 35,
                ),
                title: const Text(' About Us  '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/privacy.png",
                  height: 35,
                ),
                title: const Text(' Privacy Policy  '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/Settings.png",
                  height: 35,
                ),
                title: const Text(' Settings  '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/LogOut.png",
                  height: 35,
                ),
                title: const Text(' Log out  '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
=======
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
>>>>>>> Stashed changes
            ],
          ),
        ), //Drawer
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Color(0xFFF67952),
                size: 25,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
        ));
  }
}
