import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Senu.dart';

class Dopolniteldi extends StatefulWidget {
  const Dopolniteldi({Key? key}) : super(key: key);

  @override
  _DopolniteldiState createState() => _DopolniteldiState();
}

class _DopolniteldiState extends State<Dopolniteldi> {
  bool kontrol = false;
  final _formkeycon = GlobalKey<FormState>();
  final TextEditingController _ulisacon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 252, 1),
      body: SafeArea(
          child: Container(
              child: CustomScrollView(slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
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
                            ],color: Colors.white,
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
                                    "Дополнительно",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600, fontSize: 24),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(16, 3, 16, 15),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(text: 'Это параметры повышают вероятность получить звонок от клиента,', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black)),
                                        TextSpan(text: '  их можно не заполняь.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.black)),
                                      ],
                                    ),
                                  ),
                                ),
                                Form(
                                  key: _formkeycon,
                                  // autovalidate: kontrol,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, left: 16),
                                        child: Container(
                                            alignment: Alignment.topLeft,
                                            padding: EdgeInsets.only(bottom: 15),
                                            child: Text(
                                              "Высота потолков, м",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(163, 171, 179, 1)),
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, right: 16, bottom: 15),
                                        child: TextFormField(
                                          controller: _ulisacon,

                                          cursorColor: Color.fromRGBO(104, 109, 118, 1),
                                          decoration: InputDecoration(

                                              errorStyle: TextStyle(color: Colors.red),
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
                                Cate("Санузел"),
                                Cate("Интернет"),
                                Cate("Телефон"),
                                Cate("Балкон"),
                                Cate("Балкон остеклён"),
                                Cate("Двер"),
                                Cate("Парковка"),
                                Cate("Пол"),
                                Cate("Безопасность "),
                                Cate("Разное"),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16, top: 25,bottom: 15),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(
                                context,
                              ).push(MaterialPageRoute(builder: (context) => Senu()));
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
                                    "Далее",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color.fromRGBO(255, 255, 255, 1)),
                                  )),
                            ),
                          ),
                        )
                      ])
                    ])),

              ]))),
    );
  }
  Cate(String  select){
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: InkWell(
        onTap: (){

        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(select,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  Icon(Icons.arrow_forward_ios,size: 20,color: Color.fromRGBO(163, 171, 179, 1),)
                ],
              ),
            ),
            Divider(
              indent: 16,
              endIndent: 16,color: Color.fromRGBO(227, 231, 238, 1),
            )
          ],
        ),
      ),
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
