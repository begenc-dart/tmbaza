import 'package:flutter/material.dart';

import 'Foto.dart';


class Senu extends StatefulWidget {
  const Senu({Key? key}) : super(key: key);

  @override
  _SenuState createState() => _SenuState();
}

class _SenuState extends State<Senu> {
  bool kontrol = false;
  final _formkeycon = GlobalKey<FormState>();
  bool obmen = false;
  final TextEditingController _ulisacon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              child: CustomScrollView(slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            height: MediaQuery.of(context).size.height - 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                              Diva(Color.fromRGBO(60, 164, 231, 1)),
                              Diva(Color.fromRGBO(60, 164, 231, 1)),
                              Diva(Color.fromRGBO(227, 231, 238, 1)),
                              Diva(Color.fromRGBO(227, 231, 238, 1)),
                              Diva(Color.fromRGBO(227, 231, 238, 1)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 15, bottom: 10),
                            child: Text(
                              "Укажите цену",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                            ),
                          ),
                          Form(
                            key: _formkeycon,
                            // autovalidate: kontrol,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, bottom: 15),
                                  child: TextFormField(
                                    controller: _ulisacon,
                                    keyboardType: TextInputType.number,
                                    cursorColor:
                                        Color.fromRGBO(104, 109, 118, 1),
                                    decoration: InputDecoration(
                                        suffixText: "tmt",
                                        errorStyle:
                                            TextStyle(color: Colors.red),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                227, 231, 238, 1),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                227, 231, 238, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                227, 231, 238, 1),
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
                        ]),
                  ),
                  Container(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    width: MediaQuery.of(context).size.width,
                    padding:
                        const EdgeInsets.only(left: 10, right: 16, bottom: 13),
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 25, bottom: 15),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(
                        context,
                      ).push(
                          MaterialPageRoute(builder: (context) => Foto()));
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
                              offset:
                                  Offset(0, 15), // changes position of shadow
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
              ],
            ),
          )
        ])),
      ]))),
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
