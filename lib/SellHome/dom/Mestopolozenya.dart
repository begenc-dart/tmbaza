import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Telefon.dart';


class Mestopolozenya extends StatefulWidget {
  const Mestopolozenya({Key? key}) : super(key: key);

  @override
  _MestopolozenyaState createState() => _MestopolozenyaState();
}

class _MestopolozenyaState extends State<Mestopolozenya> {
  final TextEditingController _search = TextEditingController();
  bool otomatikKontrol = false;
  bool kontrol = false;
  final _formkey = GlobalKey<FormState>();
  final _formkeycon = GlobalKey<FormState>();
  final TextEditingController _ulisa = TextEditingController();
  final TextEditingController _dom = TextEditingController();
  final TextEditingController _per = TextEditingController();

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
            Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Text("Укажите точное местоположения",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18))),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Регион",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(163, 171, 179, 1),
                    )
                  ],
                ),
              ),
              Divider(
                endIndent: 16,
                indent: 16,
              ),
              newForm()
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => PhoneDom()));
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
    return Container(
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
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Адрес",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(163, 171, 179, 1)),
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
                                  hintText: "Улица или микрорайон ",
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width:
                                MediaQuery.of(context).size.width / 2 / 2 + 25,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _dom,
                              cursorColor: Color.fromRGBO(104, 109, 118, 1),
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Но дома",
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
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          controller: _per,
                          cursorColor: Color.fromRGBO(104, 109, 118, 1),
                          decoration: InputDecoration(
                              hintText: "Пересечение с ",
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
    );
  }
}
