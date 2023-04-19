import 'package:flutter/material.dart';
import 'package:vending_machine/widgets/apptheme.dart';

import '../widgets/apptags.dart';

class ProfileContent extends StatelessWidget {
  ProfileContent({Key? key}) : super(key: key);

  var image = [];
  var text1 = [];
  var text2 = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: ListView(children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 160,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xffF8F8F8),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
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
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Alex Nikifirav",
                  style: AppthemeData.headerTextStyle_16,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  // ListView.builder(itemCount: 3,
                  //     itemBuilder: (context, index){
                  //     return Container(
                  //       child: Column(
                  //         children: [
                  //
                  //         ],
                  //       ),
                  //     );
                  //     } )
                ],
              ),
              Text(
                "Personal Information",
                style: AppthemeData.headerTextStyle_22,
              ),
              const SizedBox(
                height: 50,
              ),
              Card(
                child: Container(
                  height: 250,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppTags.name,
                              style: AppthemeData.sub_headerTextStyle,
                            ),
                            const Text(
                              "Alex Nikifirav",
                              style: AppthemeData.headerTextStyle_16,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppTags.email,
                              style: AppthemeData.sub_headerTextStyle,
                            ),
                            const Text(
                              "alexniki@yahoo.com",
                              style: AppthemeData.headerTextStyle_16,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppTags.location,
                              style: AppthemeData.sub_headerTextStyle,
                            ),
                            const Text(
                              "San Deigo",
                              style: AppthemeData.headerTextStyle_16,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppTags.zipcode,
                              style: AppthemeData.sub_headerTextStyle,
                            ),
                            const Text(
                              "1200",
                              style: AppthemeData.headerTextStyle_16,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppTags.number,
                              style: AppthemeData.sub_headerTextStyle,
                            ),
                            const Text(
                              "(+1)5656678321",
                              style: AppthemeData.headerTextStyle_16,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
