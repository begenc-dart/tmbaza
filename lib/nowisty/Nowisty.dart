import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tmbaza/Nowisty_profile/news_profile.dart';

import 'Statisya.dart';


class Nowisty extends StatefulWidget {
  const Nowisty({Key? key}) : super(key: key);

  @override
  _NowistyState createState() => _NowistyState();
}

class _NowistyState extends State<Nowisty> with SingleTickerProviderStateMixin {
  late TabController tabController;

  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color.fromRGBO(22, 22, 22, 1),
        ),
        title: Text(
          "Новости",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(22, 22, 22, 1)),
        ),
        bottom: TabBar(
          labelColor: Color.fromRGBO(60, 164, 231, 1),
          controller: tabController,
          unselectedLabelColor: Color.fromRGBO(22, 22, 22, 1),
          indicatorColor: Color.fromRGBO(245, 201, 39, 1),
          tabs: <Tab>[
            Tab(
              text: "Новости",
            ),
            Tab(
              text: "Cтатьи",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        ListView.builder(
            itemCount: 6,
              itemBuilder:
            (BuildContext context, int index) {
              return Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(
                          builder: (context) => News_Profile(name:"В РК предлагают проверять сделки с недвижимостью от 50 млн тенге",

                          )));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "asset/image/2.png",
                          width: 120,
                          height: 80,
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "В РК предлагают проверять сделки с недвижимостью от 50 млн тенге",
                                  style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: [
                                      Text("17:39  ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),),

                                      Text("08.11.2021",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                    child: Divider(
color: Color.fromRGBO(227, 231, 238, 1),
                    ),
                  )
                ],
              );
            },


        ),
        ListView.builder(
          itemCount: 6,
          itemBuilder:
              (BuildContext context, int index) {
            return Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(
                        builder: (context) => Statiya(

                        )));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "asset/image/2.png",
                        width: 120,
                        height: 80,
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "В РК предлагают проверять сделки с недвижимостью от 50 млн тенге",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5,bottom: 5),
                                child: Text("Пенсионные накопления постоянно увеличиваются за счёт взносов и ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),),
                              ),
                              Row(
                                children: [
                                  Text("17:39  ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),),

                                  Text("08.11.2021",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),)
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                  child: Divider(
                    color: Color.fromRGBO(227, 231, 238, 1),
                  ),
                )
              ],
            );
          },


        ),
      ]),
    );
  }
}
