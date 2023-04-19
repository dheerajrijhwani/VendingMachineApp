import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
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
