import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Number.dart';


class Foto extends StatefulWidget {
  const Foto({Key? key}) : super(key: key);

  @override
  _FotoState createState() => _FotoState();
}

class _FotoState extends State<Foto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              child: CustomScrollView(slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            height: MediaQuery.of(context).size.height - 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.08),
                        spreadRadius: 0,
                        blurRadius: 30,
                        offset: Offset(0, 15), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.arrow_back_ios),
                              Text(
                                "Закрыть",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(60, 164, 231, 1)),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Diva(Color.fromRGBO(60, 164, 231, 1)),
                            Diva(Color.fromRGBO(60, 164, 231, 1)),
                            Diva(Color.fromRGBO(60, 164, 231, 1)),
                            Diva(Color.fromRGBO(60, 164, 231, 1)),
                            Diva(Color.fromRGBO(60, 164, 231, 1)),
                            Diva(Color.fromRGBO(60, 164, 231, 1)),
                            Diva(Color.fromRGBO(227, 231, 238, 1)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 15, bottom: 20),
                          child: Text(
                            "Добавьте фото",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 24),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                enableDrag: false,
                                isDismissible: false,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                context: context,
                                builder: (context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            top: 20,
                                            bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Добавьте фото",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SvgPicture.asset(
                                                "asset/icon/add-circle.svg")
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        leading: SvgPicture.asset(
                                            "asset/icon/camera.svg"),
                                        title: new Text(
                                          'Сделать снимок',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                          newDialog(context);
                                        },
                                      ),
                                      ListTile(
                                        leading: SvgPicture.asset(
                                            "asset/icon/map_black.svg"),
                                        title: new Text(
                                          'Загрузить из галереи',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 16, right: 16, bottom: 20),
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(60, 164, 231, 1),
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.08),
                                  spreadRadius: 0,
                                  blurRadius: 30,
                                  offset: Offset(
                                      0, 15), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add_circle_outline,
                                    color: Colors.white),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Далее",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Center(
                              child: Text(
                            "Продолжить без фотографий",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(60, 164, 231, 1)),
                          )),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.08),
                          spreadRadius: 0,
                          blurRadius: 30,
                          offset: Offset(0, 15), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 15),
                          child: Text(
                            "Советы",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 7, 16, 10),
                          child: Text(
                            "Приберитесь, включите свет и фотографируйте горизонтально с уровня груди. Добавьте фото с планировкой",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Center(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "asset/image/2.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    Text(
                                      "Только фотографии",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(163, 171, 179, 1)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "asset/image/2.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text(
                                    "Без скриншотов и коллажей",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(163, 171, 179, 1)),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "asset/image/2.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text(
                                    "Без логотипов и контактов",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(163, 171, 179, 1)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          endIndent: 16,
                          indent: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset("asset/icon/map.svg"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14),
                                    child: Text(
                                      "Как сфотографировать квартиру",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(60, 164, 231, 1)),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromRGBO(163, 171, 179, 1),
                                size: 18,
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
        ])),
      ]))),
    );
  }

  Future<dynamic> newDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(

          titlePadding: EdgeInsets.only(top: 20,bottom: 5),
          title: Center(
              child: Text(
            "Закрыт подачу объявления ?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          )),
          children: [
            SimpleDialogOption(
              child: Text(
                "Данный не сохраняется и придется начинать все сначала",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SimpleDialogOption(
              padding: EdgeInsets.only(top: 15,bottom: 15,left: 25,right: 25),
                child: InkWell(

                    onTap: (){
                      Navigator.of(
                        context,
                      ).push(
                          MaterialPageRoute(builder: (context) => Number()));
                    },

                  child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(60, 164, 231, 1),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.08),
                      spreadRadius: 0,
                      blurRadius: 30,
                      offset: Offset(0, 15), // changes position of shadow
                    ),
                  ],
              ),
              child: Center(
                    child: Text(
                  "Далее",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white),
              )),
            ),
                )),
            SimpleDialogOption(
              child: Text(
                "Закрыт подачу",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(211, 51, 103, 1)
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      });

  Diva(Color check) {
    return Container(
      width: 45,
      height: 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2)), color: check),
    );
  }
}
