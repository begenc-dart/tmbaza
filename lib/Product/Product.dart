import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tmbaza/Product%20decals/Product.dart';
import 'package:tmbaza/Setting/Filter_dom.dart';
import 'package:tmbaza/Setting/Filter_zdanie.dart';




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text("Купить прочее недвиж...",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),)),
            InkWell(
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Filter_Dom()));
              },
              child: Row(
                children: [
                  Text("Фильтр",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 10),
                    child: SvgPicture.asset("asset/icon/setting-3.svg"),
                  )
                ],
              ),
            )
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Align(
            alignment: Alignment.center,
            child: TabBar(

              labelColor: Color.fromRGBO(22, 22, 22, 1),
              controller: tabController,
              unselectedLabelColor: Color.fromRGBO(22, 22, 22, 1),
              indicatorColor: Color.fromRGBO(255, 0, 0, 1),
              indicatorPadding:
              EdgeInsets.only(left: 17, right: 17, bottom: 10),
              labelStyle: TextStyle(),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: Colors.white,
              ),
              tabs: <Tab>[
                Tab(
                  child: Container(

                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Cписком"),
                    ),
                  ),
                ),
                Tab(
                  text: "На карте",
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        CustomScrollView(
          slivers: [
            
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 16,bottom: 10),
                  child: Text('Горячие предложения в Туркменистан',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                )
              ]),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(
                          context,
                        ).push(MaterialPageRoute(
                            builder: (context) => Product(

                            )));
                      },
                      child: product(),
                    );
                  },
                  childCount: 6,
                ))
          ],
        ),
        product()
      ]),
    );
  }
  product() {
    return Card(
      elevation: 0,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "asset/image/1.jpg",
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            color: Color.fromRGBO(255, 221, 97, 1),
                          ),
                          width: 77,
                          height: 22,
                          child: Center(
                            child: Text(
                              "Срочно торг",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            color: Color.fromRGBO(22, 22, 22, 0.54),
                          ),
                          width: 20,
                          height: 20,
                          child: Center(child: Text("55",style: TextStyle(color: Colors.white,fontSize: 12))),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, left: 10),
                        child: Text(
                          "2 500 000 TMT",
                          style: TextStyle(
                              color: Color.fromRGBO(48, 173, 110, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, left: 10),
                        child: Text(
                          "1-комнатная квартира, 35 м², 1/2.",
                          style: TextStyle(
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 10),
                        child: Text("мкр 12, Байтурсынова 4"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "кирпичный дом, 2020 г.п., Апарт..",
                          style: TextStyle(
                              color: Color.fromRGBO(163, 171, 179, 1)),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        color: Color.fromRGBO(255, 221, 97, 1),
                      ),
                      child: SvgPicture.asset(
                        "asset/icon/user-tag.svg",

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("Специалист Аман Аманов, Атриум Ехперт"),
                    )
                  ],
                ),
              ),
              Divider(
                color: Color.fromRGBO(227, 231, 238, 1),
                thickness: 0,
                endIndent: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 13),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "asset/icon/calendar2.svg",

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7, right: 17),
                      child: Text("8.Октября",
                          style: TextStyle(
                              color: Color.fromRGBO(
                                163,
                                171,
                                179,
                                1,
                              ),
                              fontSize: 13)),
                    ),
                    SvgPicture.asset(
                      "asset/icon/eye.svg",

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text("4325",
                          style: TextStyle(
                              color: Color.fromRGBO(
                                163,
                                171,
                                179,
                                1,
                              ),
                              fontSize: 13)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
