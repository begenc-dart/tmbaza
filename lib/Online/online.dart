import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Online extends StatefulWidget {
  const Online({Key? key}) : super(key: key);

  @override
  _OnlineState createState() => _OnlineState();
}

class _OnlineState extends State<Online> {
  final _formkey = GlobalKey<FormState>();
  bool otomatikKontrol = false;
  final TextEditingController _plas = TextEditingController();
  final TextEditingController _ulisa = TextEditingController();
  final TextEditingController _dom = TextEditingController();
  final TextEditingController _post = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 22,
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SvgPicture.asset(
              "asset/icon/close-circle.svg",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Text(
                "Онлайн оценка недвижимости",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(22, 22, 22, 1)),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 15, bottom: 4),
                child: Text(
                  "Укажите параметры квартиры",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Text(
                      "Что такое оценка от Krisha? ",
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(60, 164, 231, 1)),
                    ),
                    SvgPicture.asset("asset/icon/informationOn.svg")
                  ],
                ),
              ),
              Divider(
                color: Color.fromRGBO(227, 231, 238, 1),
                indent: 16,
                endIndent: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 16, bottom: 15),
                    child: Text(
                      "Город",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, top: 16, bottom: 16),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "Ашхабад",
                            style: TextStyle(
                                color: Color.fromRGBO(163, 171, 179, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Color.fromRGBO(163, 171, 179, 1),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                color: Color.fromRGBO(227, 231, 238, 1),
                indent: 16,
                endIndent: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 16, bottom: 15),
                    child: Text(
                      "Жилой комплекс",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, top: 16, bottom: 16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Color.fromRGBO(163, 171, 179, 1),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 16),
                child: Text(
                  "Комнаты",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(163, 171, 179, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 15, top: 5),
                child: Row(
                  children: [
                    comnat("1"),
                    comnat("2"),
                    comnat("3"),
                    comnat("+4"),
                    Container(
                      width: 140,
                      height: 40,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
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
                            hintText: "Другое"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color.fromRGBO(227, 231, 238, 1),
                indent: 16,
                endIndent: 16,
              ),
              textfield(),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 15, bottom: 10),
                child: Text(
                  "Проверьте расположение",
                  style: TextStyle(
                      fontSize: 13, color: Color.fromRGBO(163, 171, 179, 1)),
                ),
              ),
              Center(child: Image.asset("asset/image/3.png")),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 30, top: 20),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(60, 164, 231, 1),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: Text(
                    "Оценит Квартиру",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                child: Text(
                  "Узнайте за какую цену продать или купить квартиру",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Column(
                children: [
                  podskaska("asset/icon/landing_val.svg", "Продавцу",
                      "Узнайте стоимость своей квартиры, чтобы продать её выгодно и быстро. Сэкономьте время на анализе рынка"),
                  podskaska("asset/image/key.svg", "Покупателю",
                      "Оцените квартиру, которая вам понравилась, чтобы торговаться аргументированно и не переплатить"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                child: Text(
                  "Как происходит оценка квартиры на Krisha.kz?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Column(
                children: [
                  ocenka("asset/image/param.svg", "Вы указываете параметры"),
                  ocenka("asset/image/algo.svg",
                      "Алгоритм находит похожие квартиры среди миллиона объявлений Krisha.kz"),
                  ocenka("asset/image/brain.svg",
                      "Искусственный интеллект сравнивает квартиры и вносит поправки к оценке"),
                  ocenka("asset/image/documentation.svg",
                      "Формируется бесплатный отчёт об оценке")
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                child: Text(
                  "Как происходит оценка квартиры на Krisha.kz?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              listtile("1. Что такое «Оценка недвижимости на Krisha.kz»?",
                  'This is tile number 1'),
              listtile("2. Как рассчитывается цена?", 'This is tile number 1'),
              listtile(
                  "3. Можно ли использовать Оценку Krisha.kz в качестве отчёта об оценке стоимости недвижимости?",
                  'This is tile number 1'),
              listtile("4. Насколько точно оценивается недвижимость?",
                  'Отчёт Оценки от Krisha.kz носит рекомендательный характер и не является официальным документом. Вы можете использовать отчёт, чтобы продать или купить квартиру за выгодную цену.'),
              listtile("5. Можно ли оценить дом?", 'This is tile number 1')
            ],
          ),
        ],
      ),
    );
  }

  listtile(String tit, String list) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
      child: ExpansionTile(
        title: Text(tit),
        collapsedTextColor: Color.fromRGBO(22, 22, 22, 1),
        children: <Widget>[
          ListTile(title: Text(list)),
        ],
      ),
    );
  }

  ocenka(String img, String com) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 20, right: 16),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(246, 248, 252, 1),
            ),
            child: Center(
                child: SvgPicture.asset(
              img,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                com,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  podskaska(String img, String conte, String info) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
      child: Container(
        height: 80,
        child: Row(
          children: [
            SvgPicture.asset(img),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      conte,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        info,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  textfield() {
    return Form(
      key: _formkey,
      // autovalidate: otomatikKontrol,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
            child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  "Площадь, м2",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(163, 171, 179, 1)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextFormField(
              controller: _plas,
              keyboardType: TextInputType.number,
              cursorColor: Color.fromRGBO(104, 109, 118, 1),
              decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.red),
                  hintText: "",
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
                  return;
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
            child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  "Улица",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(163, 171, 179, 1)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextFormField(
              controller: _ulisa,
              cursorColor: Color.fromRGBO(104, 109, 118, 1),
              decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.red),
                  hintText: "",
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
                  return;
                } else {
                  return null;
                }
              },
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 15),
                    child: Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          "№ дома",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(163, 171, 179, 1)),
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: TextFormField(
                        controller: _dom,
                        cursorColor: Color.fromRGBO(104, 109, 118, 1),
                        decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.red),
                            hintText: "",
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
                            return;
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 15),
                    child: Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          "Год постройки",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(163, 171, 179, 1)),
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: TextFormField(
                        controller: _post,
                        keyboardType: TextInputType.number,
                        cursorColor: Color.fromRGBO(104, 109, 118, 1),
                        decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.red),
                            hintText: "",
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
                            return;
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  comnat(String count) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: Color.fromRGBO(227, 231, 238, 1))),
        child: Center(
            child: Text(
          count,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
