import 'package:flutter/material.dart';
class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  bool _obmen=false;
  final _formkey = GlobalKey<FormState>();
  bool otomatikKontrol = false;
  final TextEditingController _phoneControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(246, 248, 252, 1),
        body: SafeArea(
          child: Container(
            child: CustomScrollView(slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.08),
                                spreadRadius: 0,
                                blurRadius: 30,
                                offset: Offset(0, 15), // changes position of shadow
                              ),
                            ],
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
                                  Diva(Color.fromRGBO(60, 164, 231, 1)),
                                  Diva(Color.fromRGBO(60, 164, 231, 1)),
                                  Diva(Color.fromRGBO(60, 164, 231, 1)),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 15, bottom: 15),
                                child: Text(
                                  "Укажите город",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 24),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text("Номер телефона",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16,right: 16,top: 5),
                                child: TextFormField(
                                  controller: _phoneControl,


                                  keyboardType:
                                  TextInputType.number,
                                  cursorColor: Color.fromRGBO(
                                      104, 109, 118, 1),
                                  decoration: InputDecoration(
                                    
                                    errorStyle: TextStyle(
                                        color: Colors.red),
                                    prefixText: "+9936",
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
                                    ),),
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
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.only(left:10,right: 16),
                                child: CheckboxListTile(
                                  contentPadding: EdgeInsets.only(left: 5),
                                  value: _obmen,
                                  onChanged: (secildi) {
                                    setState(() {
                                      _obmen = secildi!;
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity.platform,
                                  title: Text("На придет смс с кодом подверждения",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                margin: EdgeInsets.only(left: 16,right: 16,bottom: 15),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.08),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color.fromRGBO(60, 164, 231, 0.7)
                                ),
                                child: Center(child: Text("Далее",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),)),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ])),

            ]),
          ),
        ));
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
