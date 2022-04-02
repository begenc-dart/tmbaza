import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Izbrazenya extends StatefulWidget {
  const Izbrazenya({Key? key}) : super(key: key);

  @override
  _IzbrazenyaState createState() => _IzbrazenyaState();
}

class _IzbrazenyaState extends State<Izbrazenya>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        automaticallyImplyLeading: false,
        title: Text(
          "Избранное",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 15, bottom: 15),
              child: Container(
                color: Color.fromRGBO(246, 248, 252, 1),
                child: TabBar(
                  indicatorWeight: 1,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Color.fromRGBO(22, 22, 22, 1),
                  controller: tabController,
                  unselectedLabelColor: Color.fromRGBO(163, 171, 179, 1),
                  indicatorColor: Color.fromRGBO(22, 22, 22, 0.16),
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      2.0,
                    ),
                    color: Color.fromRGBO(255, 221, 97, 1),
                  ),
                  tabs: <Tab>[
                    Tab(
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Объявления"),
                        ),
                      ),
                    ),
                    Tab(
                      text: "ЖК ",
                    ),
                    Tab(
                      text: "Поиски",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.08),
                      spreadRadius: 0,
                      blurRadius: 15,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ]),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 16, top: 10, bottom: 10, right: 10),
                        height: 100.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          //set border radius to 50% of square height and width
                          image: DecorationImage(
                            image: AssetImage("asset/image/2.png"),
                            fit: BoxFit.cover, //change image fill type
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1-комнатная квартира, 35 м², 1/2. Республики",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            Text("Kирпичный дом, 2020 г.п., Апарт..",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(163, 171, 179, 1))),
                            Container(
                              width: 100,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: Color.fromRGBO(255, 221, 97, 1)),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "asset/icon/user-tag.svg",
                                  ),
                                  Text(
                                    "Специалист",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 25,
                              width: MediaQuery.of(context).size.width,
                              color: Color.fromRGBO(246, 248, 252, 1),
                              child: Text(
                                "2 500 000 TMT",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromRGBO(48, 173, 110, 1)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
        ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Normad 2",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(60, 164, 231, 1)),
                            ),
                            Text(
                              "от 795 000 m за м²",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            )
                          ],
                        ),
                        SvgPicture.asset("asset/icon/heart_red.svg")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Container(
                      width: 110,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Color.fromRGBO(60, 164, 231, 1)),
                      child: Center(
                          child: Text(
                        "0% Рассрочка",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 16, top: 10, bottom: 10, right: 10),
                        height: 115.0,
                        width: 160.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          //set border radius to 50% of square height and width
                          image: DecorationImage(
                            image: AssetImage("asset/image/2.png"),
                            fit: BoxFit.cover, //change image fill type
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 25,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    color: Color.fromRGBO(246, 248, 252, 1)),
                                child: Center(
                                    child: Text(
                                  "Строится",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color.fromRGBO(163, 171, 179, 1)),
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  SvgPicture.asset("asset/icon/Ellipse15.svg"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "24 квартиры",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Алматы, Медеуский р-н, ул. Жамакаева, 252",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Смотреть все квартиры",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(60, 164, 231, 1)),),
                        Icon(Icons.arrow_forward_ios,size: 18,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 15),
                    child: Divider(
                      endIndent: 16,indent: 16,
                    ),
                  )
                ],
              );
            }),
        Container()
      ]),
    );
  }
}
