import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dopolnitelni.dart';


class Adress extends StatefulWidget {
  const Adress({Key? key}) : super(key: key);

  @override
  _AdressState createState() => _AdressState();
}

class _AdressState extends State<Adress> {
  bool _obmen = false;
  final TextEditingController _search = TextEditingController();
  bool otomatikKontrol = false;
  bool kontrol = false;
  final _formkey = GlobalKey<FormState>();
  final _formkeycon = GlobalKey<FormState>();
  final TextEditingController _ulisa = TextEditingController();
  final TextEditingController _dom = TextEditingController();
  final TextEditingController _ulisacon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(246, 248, 252, 1),
        body: SafeArea(
            child: Container(
                child: CustomScrollView(slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                          Diva(Color.fromRGBO(227, 231, 238, 1)),
                          Diva(Color.fromRGBO(227, 231, 238, 1)),
                          Diva(Color.fromRGBO(227, 231, 238, 1)),
                          Diva(Color.fromRGBO(227, 231, 238, 1)),
                          Diva(Color.fromRGBO(227, 231, 238, 1)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 15, bottom: 10),
                        child: Text(
                          "Укажите адрес",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 24),
                        ),
                      ),
                      Select("Город", "Ашхабад"),
                      Select("Район", "Парахат 1"),
                      Select("Микрорайон", "Парахат 1"),
                      Select("Жилой комплекс", "Парахат 1")
                    ]),
              )
            ])
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            newForm(),
            Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 10, right: 16, bottom: 13),
              child: CheckboxListTile(
                contentPadding: EdgeInsets.only(left: 5),
                value: _obmen,
                onChanged: (secildi) {
                  setState(() {
                    _obmen = secildi!;
                  });
                },
                controlAffinity: ListTileControlAffinity.platform,
                title: Text(
                  "Скрыть номер дома",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
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
                child: Form(
                  key: _formkeycon,
                  // autovalidate: kontrol,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 16),
                        child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(bottom: 15),
                            child: Text(
                              "Ориентир или пересечение улиц",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(163, 171, 179, 1)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 15, top: 5),
                        child: TextFormField(
                          controller: _ulisacon,

                          cursorColor: Color.fromRGBO(104, 109, 118, 1),
                          decoration: InputDecoration(
                              suffixIconConstraints:
                                  BoxConstraints.expand(width: 50, height: 50),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SvgPicture.asset(
                                  "asset/icon/information1.svg",
                                ),
                              ),
                              errorStyle: TextStyle(color: Colors.red),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(227, 231, 238, 1),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(227, 231, 238, 1),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(227, 231, 238, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.transparent),
                          // validator: (jog) {
                          //   if (jog!.length == 0) {
                          //     return sonuc
                          //         .data!.gosmaca.doldur;
                          //   } else if (jog.length < 3) {
                          //     return sonuc.data!.gosmaca
                          //         .telefon;
                          //   } else if (jog.length == 7) {
                          //     return null;
                          //   } else {
                          //     return sonuc.data!.gosmaca
                          //         .telefon;
                          //   }
                          // },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(
                      MaterialPageRoute(builder: (context) => Dopolniteldi()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.08),
                          spreadRadius: 0,
                          blurRadius: 30,
                          offset: Offset(0, 15), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: Color.fromRGBO(60, 164, 231, 1)),
                  child: Center(
                      child: Text(
                    "Далее",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  )),
                ),
              ),
            )
          ]))
        ]))));
  }

  Select(String check, String nav) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                check,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    nav,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromRGBO(163, 171, 179, 1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.arrow_forward_ios,
                        size: 20, color: Color.fromRGBO(163, 171, 179, 1)),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          indent: 16,
          endIndent: 16,
        )
      ],
    );
  }

  newForm() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 16, left: 16),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: _formkey,
                    // ignore: deprecated_member_use
                    // // autovalidate: otomatikKontrol,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 70, top: 15, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Улица",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(163, 171, 179, 1)),
                              ),
                              Text(
                                "№ дома",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(163, 171, 179, 1)),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 170,
                              child: TextFormField(
                                controller: _ulisa,
                                cursorColor: Color.fromRGBO(104, 109, 118, 1),
                                decoration: InputDecoration(
                                    errorStyle: TextStyle(color: Colors.red),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(227, 231, 238, 1),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(227, 231, 238, 1),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(227, 231, 238, 1),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent),
                                validator: (jog) {
                                  if (jog!.length == 0) {
                                    return "full";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2 / 2 +
                                  25,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: _dom,
                                cursorColor: Color.fromRGBO(104, 109, 118, 1),
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(227, 231, 238, 1),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(227, 231, 238, 1),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent),
                                validator: (jog) {
                                  if (jog!.length == 0) {
                                    return "full";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Diva(Color check) {
    return Container(
      width: 45,
      height: 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2)), color: check),
    );
  }
}
