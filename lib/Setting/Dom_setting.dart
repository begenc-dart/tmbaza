import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tmbaza/velayat/velayat.dart';


class Dom_setting extends StatefulWidget {
  const Dom_setting({Key? key}) : super(key: key);

  @override
  _Dom_settingState createState() => _Dom_settingState();
}

class _Dom_settingState extends State<Dom_setting> {
  String? _chosenValue;
  String? _chosenTip;
  String? _mestopol;
  String? _zalog;
  String? _swera;
  String? _tekst;
  bool chechBox = false;
  bool _hozayyn = false;
  bool _odenst = false;
  bool _obmen = false;
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("asset/icon/close-circle.svg"),
            Text(
              "Фильтр",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 22, 22, 1)),
            ),
            SvgPicture.asset("asset/icon/star.svg"),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 215,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 15, bottom: 15),
                      child: Text(
                        "Покозать сначала",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Color.fromRGBO(163, 171, 179, 1),
                          ),
                          alignment: Alignment.centerRight,
                          focusColor: Colors.white,
                          value: _chosenValue,
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
                                      color: Color.fromRGBO(163, 171, 179, 1),
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
                              _chosenValue = value.toString();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Velayat()));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Регион",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  "мкр 71-й разъезд",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 221, 97, 1)),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Color.fromRGBO(163, 171, 179, 1),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 15, bottom: 15),
                      child: Text(
                        "Тип",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Color.fromRGBO(163, 171, 179, 1),
                          ),
                          alignment: Alignment.centerRight,
                          focusColor: Colors.white,
                          value: _chosenTip,
                          //elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'Не важно',
                            'Кирпичный',
                            'Панельный',
                            'Монолитный',
                            'Иное',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            "Купить прочую недвижимость",
                            style: TextStyle(
                                color: Color.fromRGBO(163, 171, 179, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String? tip) {
                            setState(() {
                              _chosenTip = tip.toString();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 15, bottom: 15),
                      child: Text(
                        "Сфера деятельности",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Color.fromRGBO(163, 171, 179, 1),
                          ),
                          alignment: Alignment.centerRight,
                          focusColor: Colors.white,
                          value: _swera,
                          //elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'Не важно',
                            'Кирпичный',
                            'Панельный',
                            'Монолитный',
                            'Иное',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            "Не выбрано",
                            style: TextStyle(
                                color: Color.fromRGBO(163, 171, 179, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String? tip) {
                            setState(() {
                              _swera = tip.toString();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 15),
                  child: Text(
                    "ЦЕНА, ТГ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(163, 171, 179, 1)),
                  ),
                ),
                newForm(),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 10, right: 16),
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.only(left: 5),
                    value: chechBox,
                    onChanged: (secildi) {
                      setState(() {
                        chechBox = secildi!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.platform,
                    title: Text(
                      "С фото",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 10, right: 16),
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.only(left: 5),
                    value: _hozayyn,
                    onChanged: (secildi) {
                      setState(() {
                        _hozayyn = secildi!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.platform,
                    title: Text(
                      "От хозяев",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 10, right: 16),
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.only(left: 5),
                    value: _odenst,
                    onChanged: (secildi) {
                      setState(() {
                        _odenst = secildi!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.platform,
                    title: Text(
                      "От проверенных агентств",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Местоположение",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "мкр 71-й разъезд",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(163, 171, 179, 1)),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Color.fromRGBO(163, 171, 179, 1),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 15, bottom: 15),
                      child: Text(
                        "Действующий бизнес",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Color.fromRGBO(163, 171, 179, 1),
                          ),
                          alignment: Alignment.centerRight,
                          focusColor: Colors.white,
                          value: _mestopol,
                          //elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'Не важно',
                            'Кирпичный',
                            'Панельный',
                            'Монолитный',
                            'Иное',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            "Не выбрано",
                            style: TextStyle(
                                color: Color.fromRGBO(163, 171, 179, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String? tip) {
                            setState(() {
                              _mestopol = tip.toString();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 15, bottom: 15),
                      child: Text(
                        "В залоге",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Color.fromRGBO(163, 171, 179, 1),
                          ),
                          alignment: Alignment.centerRight,
                          focusColor: Colors.white,
                          value: _zalog,
                          //elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'Не важно',
                            'Кирпичный',
                            'Панельный',
                            'Монолитный',
                            'Иное',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            "Не выбрано",
                            style: TextStyle(
                                color: Color.fromRGBO(163, 171, 179, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String? tip) {
                            setState(() {
                              _zalog = tip.toString();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 10, right: 16),
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
                      "Возможен обмен",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 15, bottom: 15),
                      child: Text(
                        "Текст объявления",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Color.fromRGBO(163, 171, 179, 1),
                          ),
                          alignment: Alignment.centerRight,
                          focusColor: Colors.white,
                          value: _tekst,
                          //elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'Не важно',
                            'Кирпичный',
                            'Панельный',
                            'Монолитный',
                            'Иное',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            "Не выбрано",
                            style: TextStyle(
                                color: Color.fromRGBO(163, 171, 179, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String? tip) {
                            setState(() {
                              _tekst = tip.toString();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  indent: 16,
                  endIndent: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  child: Center(
                      child: Text(
                    "Сбросить",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color.fromRGBO(211, 51, 103, 1)),
                  )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("asset/icon/notification-bing.svg"),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "Получать уведомления",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Color.fromRGBO(255, 221, 97, 1)),
              child: Center(
                  child: Text(
                "Покозать результаты (5712)",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              )),
            ),
          )
        ],
      ),
    );
  }

  bool otomatikKontrol = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _ot = TextEditingController();
  final TextEditingController _do = TextEditingController();
  newForm() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 16, left: 16),
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Form(
                key: _formkey,
                // ignore: deprecated_member_use
                // autovalidate: otomatikKontrol,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 230,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _ot,
                        cursorColor: Color.fromRGBO(104, 109, 118, 1),
                        decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.red),
                            hintText: "От",
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
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(bottom: 10),
                        child: Icon(Icons.minimize)),
                    Container(
                      width: MediaQuery.of(context).size.width - 230,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _do,
                        cursorColor: Color.fromRGBO(104, 109, 118, 1),
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "До",
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
    );
  }
}
