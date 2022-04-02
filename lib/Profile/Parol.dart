import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Parol extends StatefulWidget {
  const Parol({Key? key}) : super(key: key);

  @override
  _ParolState createState() => _ParolState();
}

class _ParolState extends State<Parol> {
  final _formkey = GlobalKey<FormState>();

  bool otomatikKontrol = false;
  final TextEditingController phoneControl = TextEditingController();
  final TextEditingController pasword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Смена пароля",
              style: TextStyle(color: Colors.black),
            ),
            SvgPicture.asset("asset/icon/login_black.svg")
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 16),
                  child: Text(
                    "Введите текущий пароль",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                newForm(),
                Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 16, top: 10, bottom: 10),
                    child: Text("Забыли пароль?",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(60, 164, 231, 1))))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 20),
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(60, 164, 231, 1)),
            child: Center(
              child: Text(
                "Смена пароля",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  newForm() {
    return Theme(
      data: Theme.of(context).copyWith(errorColor: Colors.red),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 16, left: 16),
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: _formkey,
                  // autovalidate: otomatikKontrol,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: pasword,
                        cursorColor: Color.fromRGBO(104, 109, 118, 1),
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixText: "Показать",
                            suffixStyle: TextStyle(
                                color: Color.fromRGBO(60, 164, 231, 1)),
                            labelText: "Текущий пароль",
                            floatingLabelStyle: TextStyle(
                                color: Color.fromRGBO(60, 164, 231, 1)),
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
                        //     return full;
                        //   } else if (jog.length < 6) {
                        //     return barla;
                        //   } else {
                        //     return null;
                        //   }
                        // },
                      ),
                      SizedBox(
                        height: 10,
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
