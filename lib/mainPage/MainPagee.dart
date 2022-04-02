import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tmbaza/Gid/Gid.dart';
import 'package:tmbaza/NewHome/NewHome.dart';
import 'package:tmbaza/Online/online.dart';
import 'package:tmbaza/Product%20decals/Product.dart';
import 'package:tmbaza/Sell/sell.dart';
import 'package:tmbaza/nowisty/Nowisty.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(246, 248, 252, 1),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: false,
                snap: false,
                pinned: true,
                backgroundColor: Color.fromRGBO(255, 221, 97, 1),
                leadingWidth: 110,
                leading: Container(
                  padding: EdgeInsets.only(left: 16),
                  child:Image.asset("asset/image/TMBAZA.png")
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        child: Text(
                          "TKM",
                          style: TextStyle(
                              color: Color.fromRGBO(22, 22, 22, 1), fontSize: 16),
                        )),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color.fromRGBO(22, 22, 22, 1),
                    )
                  ],
                ),

              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Column(
                    children: [
                      Container(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).push(MaterialPageRoute(
                                    builder: (context) => Sell()));
                              },
                              child: Column(
                                children: [
                                  select("Купить", "324234",
                                      "asset/icon/Home.svg", false),
                                  Divider(
                                    color: Colors.black,
                                    indent: 45,
                                    endIndent: 16,
                                  ),
                                ],
                              ),
                            ),
                            select("Арендовать", "34234",
                                "asset/icon/calendar.svg", false),
                            Divider(
                              color: Colors.black,
                              indent: 45,
                              endIndent: 16,
                            ),
                            InkWell(
                              child: select("Элитную недвижимость", "",
                                  "asset/icon/Key.svg", false),
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).push(MaterialPageRoute(
                                    builder: (context) => NewHome()));
                              },
                            ),
                            Divider(
                              color: Colors.black,
                              indent: 45,
                              endIndent: 16,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).push(MaterialPageRoute(
                                    builder: (context) => Online()));
                              },
                              child: select("Коммерческое недвижимость", "",
                                  "asset/icon/tag-2.svg", false),
                            ),
                            Divider(
                              color: Colors.black,
                              indent: 45,
                              endIndent: 16,
                            ),
                            select("Moи объявления", "",
                                "asset/icon/slider-vertical.svg", false),
                            Divider(
                              color: Colors.black,
                              indent: 45,
                              endIndent: 16,
                            ),
                            InkWell(
                              child: select("Новости", "",
                                  "asset/icon/note-2.svg", false),
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).push(MaterialPageRoute(
                                    builder: (context) => Nowisty()));
                              },
                            ),
                            Divider(
                              color: Colors.black,
                              indent: 45,
                              endIndent: 16,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).push(MaterialPageRoute(
                                    builder: (context) => Gid()));
                              },
                              child: select("Крыша Гид", "",
                                  "asset/icon/information.svg", false),
                            )
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding:
                          EdgeInsets.only(left: 20, top: 20, bottom: 10),
                          child: Text(
                            "Горячие предложения в Туркменистан",
                            style: TextStyle(fontSize: 18),
                          )),
                    ],
                  ),
                ]),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(
                            context,
                          ).push(
                              MaterialPageRoute(builder: (context) => Product()));
                        },
                        child: product(),
                      );
                    },
                    childCount: 6,
                  ))
            ],
          )),
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
                          child: Center(
                              child: Text("55",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12))),
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

  select(String name, String count, String icon, bool check) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 18, right: 12, top: 17, bottom: 15),
                    child: SvgPicture.asset(
                      icon,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 17, bottom: 15),
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 16),
                      )),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 17, right: 11, bottom: 15),
                      child: Text(count)),
                  Container(
                      padding: EdgeInsets.only(top: 17, right: 21, bottom: 15),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ))
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
