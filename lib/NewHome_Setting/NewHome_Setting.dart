import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Home_setting extends StatefulWidget {
  const Home_setting({Key? key}) : super(key: key);

  @override
  _Home_settingState createState() => _Home_settingState();
}

class _Home_settingState extends State<Home_setting> {
  bool chechBox = false;
  bool rast = false;
  bool prog = false;
  bool otomatikKontrolobsaya = false;
  final _obsaya = GlobalKey<FormState>();
  final TextEditingController _otobsaya = TextEditingController();
  final TextEditingController _doobsaya = TextEditingController();
  final TextEditingController _otdom = TextEditingController();
  final TextEditingController _dodome = TextEditingController();
  final TextEditingController _otgod = TextEditingController();
  final TextEditingController _dogod = TextEditingController();
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "asset/icon/close-circle.svg",
              height: 22,
              width: 22,
            ),
            Text(
              "Фильтр",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 22, 22, 1)),
            ),
            Container()
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 150,
            child: ListView(
              children: [
                Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, right: 16, left: 16, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Все регионы",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Все города",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(163, 171, 179, 1)),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                  color: Color.fromRGBO(163, 171, 179, 1),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(
                        indent: 16,
                        endIndent: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 16),
                        child: Text(
                          "Комнаты",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromRGBO(163, 171, 179, 1)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, bottom: 15, top: 5),
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
                        indent: 16,
                        endIndent: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 15, bottom: 10),
                        child: Text(
                          "ЦЕНА, ТГ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(163, 171, 179, 1)),
                        ),
                      ),
                      Center(
                        child: ToggleSwitch(
                          activeBgColor: [Color.fromRGBO(255, 221, 97, 1)],
                          onToggle: (index) {
                            debugPrint(index.toString());
                          },
                          activeFgColor: Color.fromRGBO(22, 22, 22, 1),
                          inactiveFgColor: Color.fromRGBO(163, 171, 179, 1),
                          inactiveBgColor: Color.fromRGBO(246, 248, 252, 1),
                          cornerRadius: 2,
                          minHeight: 40,
                          minWidth: 325,
                          fontSize: 14,
                          totalSwitches: 2,
                          labels: ["За всё ", "За м2"],
                        ),
                      ),
                      newForm(),
                      Divider(
                        indent: 16,
                        endIndent: 16,
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
                            "Ипотека",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 16,
                        endIndent: 16,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 10, right: 16),
                        child: CheckboxListTile(
                          contentPadding: EdgeInsets.only(left: 5),
                          value: rast,
                          onChanged: (secildi) {
                            setState(() {
                              rast = secildi!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.platform,
                          title: Text(
                            "Рассрочка",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 16,
                        endIndent: 16,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 10, right: 16),
                        child: CheckboxListTile(
                          contentPadding: EdgeInsets.only(left: 5),
                          value: prog,
                          onChanged: (secildi) {
                            setState(() {
                              prog = secildi!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.platform,
                          title: Text(
                            "Программа “7-20-25”",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 50),
                      child: Container(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: Column(
                          children: [
                            ExpansionTile(
                              textColor: Colors.black,
                              iconColor: Colors.black,
                              initiallyExpanded: false,
                              title: Container(
                                width: double.infinity,
                                child: Text(
                                  "Дополнительный параметры",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                              children: [
                                Column(
                                  children: [
                                    reyion(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, bottom: 15),
                                      child: Divider(
                                        indent: 16,
                                        endIndent: 16,
                                      ),
                                    ),
                                    reyion(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, bottom: 15),
                                      child: Divider(
                                        indent: 16,
                                        endIndent: 16,
                                      ),
                                    ),
                                    reyion(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, bottom: 15),
                                      child: Divider(
                                        indent: 16,
                                        endIndent: 16,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 16, left: 16),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Form(
                                        key: _obsaya,
                                        // ignore: deprecated_member_use
                                        // autovalidate: otomatikKontrol,,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: Text(
                                                "Общая площадь, м",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        163, 171, 179, 1)),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      230,
                                                  child: TextFormField(
                                                    keyboardType:
                                                        TextInputType.number,
                                                    controller: _otobsaya,
                                                    cursorColor: Color.fromRGBO(
                                                        104, 109, 118, 1),
                                                    decoration: InputDecoration(
                                                        errorStyle: TextStyle(
                                                            color: Colors.red),
                                                        hintText: "От",
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(5),
                                                          ),
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent),
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
                                                    alignment:
                                                        Alignment.topLeft,
                                                    padding: EdgeInsets.only(
                                                        bottom: 10),
                                                    child:
                                                        Icon(Icons.minimize)),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      230,
                                                  child: TextFormField(
                                                    keyboardType:
                                                        TextInputType.number,
                                                    controller: _doobsaya,
                                                    cursorColor: Color.fromRGBO(
                                                        104, 109, 118, 1),
                                                    obscureText: true,
                                                    decoration: InputDecoration(
                                                        hintText: "До",
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(5),
                                                          ),
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent),
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5, top: 10),
                                              child: Text(
                                                "Этажей в доме",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        163, 171, 179, 1)),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      230,
                                                  child: TextFormField(
                                                    keyboardType:
                                                        TextInputType.number,
                                                    controller: _otdom,
                                                    cursorColor: Color.fromRGBO(
                                                        104, 109, 118, 1),
                                                    decoration: InputDecoration(
                                                        errorStyle: TextStyle(
                                                            color: Colors.red),
                                                        hintText: "От",
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(5),
                                                          ),
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent),
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
                                                    alignment:
                                                        Alignment.topLeft,
                                                    padding: EdgeInsets.only(
                                                        bottom: 10),
                                                    child:
                                                        Icon(Icons.minimize)),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      230,
                                                  child: TextFormField(
                                                    keyboardType:
                                                        TextInputType.number,
                                                    controller: _dodome,
                                                    cursorColor: Color.fromRGBO(
                                                        104, 109, 118, 1),
                                                    obscureText: true,
                                                    decoration: InputDecoration(
                                                        hintText: "До",
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(5),
                                                          ),
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent),
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5, top: 10),
                                              child: Text(
                                                "Год постройки, от 2004",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        163, 171, 179, 1)),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      230,
                                                  child: TextFormField(
                                                    keyboardType:
                                                        TextInputType.number,
                                                    controller: _otgod,
                                                    cursorColor: Color.fromRGBO(
                                                        104, 109, 118, 1),
                                                    decoration: InputDecoration(
                                                        errorStyle: TextStyle(
                                                            color: Colors.red),
                                                        hintText: "От",
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(5),
                                                          ),
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent),
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
                                                    alignment:
                                                        Alignment.topLeft,
                                                    padding: EdgeInsets.only(
                                                        bottom: 10),
                                                    child:
                                                        Icon(Icons.minimize)),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      230,
                                                  child: TextFormField(
                                                    keyboardType:
                                                        TextInputType.number,
                                                    controller: _dogod,
                                                    cursorColor: Color.fromRGBO(
                                                        104, 109, 118, 1),
                                                    obscureText: true,
                                                    decoration: InputDecoration(
                                                        hintText: "До",
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(5),
                                                          ),
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    227,
                                                                    231,
                                                                    238,
                                                                    1),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent),
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5, top: 10),
                                              child: Text(
                                                "Год постройки, от 2004",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        163, 171, 179, 1)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: TextFormField(
                                                  controller: _name,
                                                  cursorColor: Color.fromRGBO(
                                                      104, 109, 118, 1),
                                                  decoration: InputDecoration(
                                                      errorStyle: TextStyle(
                                                          color: Colors.red),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(5),
                                                        ),
                                                        borderSide: BorderSide(
                                                          color: Color.fromRGBO(
                                                              227, 231, 238, 1),
                                                        ),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color.fromRGBO(
                                                              227, 231, 238, 1),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color.fromRGBO(
                                                              227, 231, 238, 1),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          Colors.transparent),
                                                  validator: (jog) {
                                                    if (jog!.length == 0) {
                                                      return "full";
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Padding(
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
            ),
          )
        ],
      ),
    );
  }

  reyion() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Все регионы",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Color.fromRGBO(163, 171, 179, 1),
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
                // // autovalidate: otomatikKontrol,
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
