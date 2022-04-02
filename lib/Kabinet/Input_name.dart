import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Input_Name extends StatefulWidget {
  const Input_Name({Key? key}) : super(key: key);

  @override
  _Input_NameState createState() => _Input_NameState();
}

class _Input_NameState extends State<Input_Name> {
  @override
  final _formkey = GlobalKey<FormState>();
  bool otomatikKontrol = false;
  final TextEditingController _phoneControl = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        centerTitle: true,
        leading: Container(
            child: SvgPicture.asset(
          "asset/icon/close-circle.svg",
          width: 25,
          height: 25,
          fit: BoxFit.scaleDown,
        )),
        title: Text(
          "Лично кабинет",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 25),
              child:
                  Center(child: SvgPicture.asset('asset/icon/Krisha.tm.svg')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 15),
              child: Text(
                "Вход в личный кабинет",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 13, left: 12),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: _formkey,

                    // // // autovalidate: otomatikKontrol,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _phoneControl,

                          // maxLength: 7,

                          cursorColor: Color.fromRGBO(104, 109, 118, 1),
                          decoration: InputDecoration(
                            labelText: "Введите имя",
                            errorStyle: TextStyle(color: Colors.red),
                            // prefixText: "+9936",
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
                          ),
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
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 25, bottom: 20),
              child: InkWell(
                onTap: () {
                  // Navigator.of(
                  //   context,
                  // ).push(MaterialPageRoute(builder: (context) => Code()));
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
                    "Продолжить",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
