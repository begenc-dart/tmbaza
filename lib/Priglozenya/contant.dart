import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController _nameControl = TextEditingController();
  final TextEditingController _phoneControl = TextEditingController();
  final TextEditingController _habar = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String? _ad, _tel, _acar, _acar2, checked;
  String? barla;
  bool otomatikKontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 252, 1),
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
              "Напишите нам",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            Text(
              "Отправить",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [newForm()],
      ),
    );
  }

  newForm() {
    return Theme(
      data: Theme.of(context).copyWith(errorColor: Colors.red),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: _formkey,
                  // ignore: deprecated_member_use
                  // autovalidate: otomatikKontrol,

                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameControl,
                        cursorColor: Color.fromRGBO(104, 109, 118, 1),
                        decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.red),
                            hintText: "Введите email для ответа",
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
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        onSaved: (deger) => _ad = deger,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _habar,
                        cursorColor: Color.fromRGBO(104, 109, 118, 1),
                        decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.red),
                            hintText: "Напишите свою проблему",
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
                        //   barla = jog;
                        //   if (jog!.length == 0) {
                        //     return full;
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        onSaved: (deger) => _acar = deger,
                        maxLines: 7,
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
