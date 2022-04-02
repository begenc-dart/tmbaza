import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Pomoseniya extends StatefulWidget {
  const Pomoseniya({Key? key}) : super(key: key);

  @override
  _PomoseniyaState createState() => _PomoseniyaState();
}

class _PomoseniyaState extends State<Pomoseniya> {
  bool obmen = false;
  bool kopiya = false;
  bool otomatikKontrol = false;
  bool kontrol = false;
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _god = TextEditingController();
  final TextEditingController _sena = TextEditingController();
  final TextEditingController _plo = TextEditingController();
  final TextEditingController _liniya = TextEditingController();
  final TextEditingController _potolkow = TextEditingController();
  final TextEditingController _parkow = TextEditingController();
  final TextEditingController _sotok = TextEditingController();
  final TextEditingController _textSob = TextEditingController();
  @override
  String? zal;
  String? sos;
  String? inter;
  String? bez;
  String? raz;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text(
              "Подать объявления",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SvgPicture.asset("asset/icon/close-circle.svg"),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "Расскажите подробно о вашей недвиемасти",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, bottom: 20),
            child: Text(
              "Чем больше информация вы предоставите, тем проще покупателю сделоть выбор. Обязательно поля отмечены звездочкой ",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(163, 171, 179, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          newForm(),
          Divider(),
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 10, right: 16),
            child: CheckboxListTile(
              contentPadding: EdgeInsets.only(left: 5),
              value: obmen,
              onChanged: (secildi) {
                setState(() {
                  obmen = secildi!;
                });
              },
              controlAffinity: ListTileControlAffinity.platform,
              title: Text(
                "Возможен обмен",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Divider(),
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 10, right: 16),
            child: CheckboxListTile(
              contentPadding: EdgeInsets.only(left: 5),
              value: kopiya,
              onChanged: (secildi) {
                setState(() {
                  kopiya = secildi!;
                });
              },
              controlAffinity: ListTileControlAffinity.platform,
              title: Text(
                "Разместите копию",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {
              // Navigator.of(
              //   context,
              // ).push(
              //     MaterialPageRoute(builder: (context) => FotoDom()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 15, bottom: 15),
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
                    color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }

  newForm() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: _formkey,
                    // ignore: deprecated_member_use
                    // // autovalidate: otomatikKontrol,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "ЦЕНА, ТГ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _sena,
                            cursorColor: Color.fromRGBO(104, 109, 118, 1),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Divider(),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "В залоге",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Color.fromRGBO(163, 171, 179, 1),
                                ),
                                isExpanded: true,
                                focusColor: Colors.white,
                                value: zal,
                                //elevation: 5,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: <String>[
                                  'Новые',
                                  'Дешёвые',
                                  'Дорогие',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                163, 171, 179, 1),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  "Новые",
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    zal = value.toString();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 5),
                          child: Text(
                            "Год постройки (сдачи в эксплуатацию)",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _god,
                            cursorColor: Color.fromRGBO(104, 109, 118, 1),
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
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 5),
                          child: Text(
                            "Объщая площадь м2 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _plo,
                            cursorColor: Color.fromRGBO(104, 109, 118, 1),
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
                        Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Состояние",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Color.fromRGBO(163, 171, 179, 1),
                                ),
                                isExpanded: true,
                                focusColor: Colors.white,
                                value: sos,
                                //elevation: 5,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: <String>[
                                  'Новые',
                                  'Дешёвые',
                                  'Дорогие',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                163, 171, 179, 1),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  "Новые",
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    sos = value.toString();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 5),
                          child: Text(
                            "Кол-во телефонных линий",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _liniya,
                            cursorColor: Color.fromRGBO(104, 109, 118, 1),
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
                        Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Интернет",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Color.fromRGBO(163, 171, 179, 1),
                                ),
                                isExpanded: true,
                                focusColor: Colors.white,
                                value: inter,
                                //elevation: 5,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: <String>[
                                  'Новые',
                                  'Дешёвые',
                                  'Дорогие',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                163, 171, 179, 1),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  "Новые",
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    inter = value.toString();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 5),
                          child: Text(
                            "Высота потолков, м",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _potolkow,
                            cursorColor: Color.fromRGBO(104, 109, 118, 1),
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
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 5),
                          child: Text(
                            "Парковка",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _parkow,
                            cursorColor: Color.fromRGBO(104, 109, 118, 1),
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
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 5),
                          child: Text(
                            "Площадь участка соток",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _sotok,
                            cursorColor: Color.fromRGBO(104, 109, 118, 1),
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
                        Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Безопастность",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Color.fromRGBO(163, 171, 179, 1),
                                ),
                                isExpanded: true,
                                focusColor: Colors.white,
                                value: bez,
                                //elevation: 5,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: <String>[
                                  'Новые',
                                  'Дешёвые',
                                  'Дорогие',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                163, 171, 179, 1),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  "Новые",
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    bez = value.toString();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Разное",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Color.fromRGBO(163, 171, 179, 1),
                                ),
                                isExpanded: true,
                                focusColor: Colors.white,
                                value: raz,
                                //elevation: 5,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: <String>[
                                  'Новые',
                                  'Дешёвые',
                                  'Дорогие',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                163, 171, 179, 1),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  "Новые",
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    raz = value.toString();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 5),
                          child: Text(
                            "Текст объявления",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            maxLines: 4,
                            controller: _textSob,
                            cursorColor: Color.fromRGBO(104, 109, 118, 1),
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
                  )),
            )
          ],
        ),
      ),
    );
  }
}
