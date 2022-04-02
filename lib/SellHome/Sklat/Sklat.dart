import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tmbaza/SellHome/dom/Foto.dart';


class Sklat extends StatefulWidget {
  const Sklat({Key? key}) : super(key: key);

  @override
  _SklatState createState() => _SklatState();
}

class _SklatState extends State<Sklat> {
  bool otomatikKontrol = false;
  bool kontrol = false;
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _sena = TextEditingController();
  final TextEditingController _god = TextEditingController();
  final TextEditingController _etaz = TextEditingController();
  final TextEditingController _sotok = TextEditingController();
  final TextEditingController _plosadka = TextEditingController();
  final TextEditingController _kuhni = TextEditingController();
  final TextEditingController _ucastok = TextEditingController();
  final TextEditingController _krysi = TextEditingController();
  final TextEditingController _potolok = TextEditingController();
  final TextEditingController _textSob = TextEditingController();
  bool obmen = false;
  bool kopiya = false;
  String? zalog;
  String? tip;
  String? zalok;
  String? plosad;
  String? raz;
  String? tupik;
  String? swoy;
  String? kom;
  String? raznoy;
  @override
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
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => FotoDom()));
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
                    // autovalidate: otomatikKontrol,
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
                        Divider(),
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
                                alignment: Alignment.topLeft,
                                focusColor: Colors.white,
                                value: zalog,
                                isExpanded: true,
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
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(163, 171, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
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
                                    zalog = value.toString();
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
                              "Тип ",
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
                                alignment: Alignment.topLeft,
                                focusColor: Colors.white,
                                value: tip,
                                isExpanded: true,
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
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(163, 171, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
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
                                    tip = value.toString();
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
                                alignment: Alignment.topLeft,
                                focusColor: Colors.white,
                                value: zalok,
                                isExpanded: true,
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
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(163, 171, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
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
                                    zalok = value.toString();
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
                            "Год постройки",
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
                            "Площадь участка",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _etaz,
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
                              "Единицы измерения площади",
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
                                alignment: Alignment.topLeft,
                                focusColor: Colors.white,
                                value: plosad,
                                isExpanded: true,
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
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(163, 171, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
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
                                    plosad = value.toString();
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
                            "Площадь производственных помещений м2 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _etaz,
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
                            "Высота потолков производственных помещений м2",
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 5),
                          child: Text(
                            "Площодь складский помещений м2",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _plosadka,
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
                            "Высота потолков складский помещений м2",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _kuhni,
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
                            "Площодь офисных помещений м2",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _ucastok,
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
                              "Тип размещения ",
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
                                alignment: Alignment.topLeft,
                                focusColor: Colors.white,
                                value: raz,
                                isExpanded: true,
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
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(163, 171, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ж/д тупик",
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
                                alignment: Alignment.topLeft,
                                focusColor: Colors.white,
                                value: tupik,
                                isExpanded: true,
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
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(163, 171, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
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
                                    tupik = value.toString();
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
                            "Макс потребление энергии квт",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(163, 171, 179, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            controller: _krysi,
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
                              "Своя подстанция (ТП)",
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
                                alignment: Alignment.topLeft,
                                focusColor: Colors.white,
                                value: swoy,
                                isExpanded: true,
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
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(163, 171, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
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
                                    swoy = value.toString();
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
                              "Коммуникации",
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
                                alignment: Alignment.topLeft,
                                focusColor: Colors.white,
                                value: kom,
                                isExpanded: true,
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
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(163, 171, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
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
                                    kom = value.toString();
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
                            controller: _potolok,
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
                                alignment: Alignment.topLeft,
                                focusColor: Colors.white,
                                value: raznoy,
                                isExpanded: true,
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
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(163, 171, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
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
                                    raznoy = value.toString();
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
