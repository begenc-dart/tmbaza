import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Soglasenya.dart';
import 'contant.dart';
import 'prawila.dart';


class Priglozenya extends StatefulWidget {
  const Priglozenya({Key? key}) : super(key: key);

  @override
  _PriglozenyaState createState() => _PriglozenyaState();
}

class _PriglozenyaState extends State<Priglozenya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "О приложения",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 15),
            child: SvgPicture.asset("asset/icon/Krysa.tm.svg"),
          ),
          Center(
              child: Text(
            "Версия 21.11.23 (1)",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color.fromRGBO(22, 22, 22, 0.7)),
          )),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 15),
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
                color: Color.fromRGBO(48, 211, 45, 1),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Center(
                child: Text(
              "Получить помощь в Whatsapp",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )),
          ),
          Padding(
              padding: EdgeInsets.only(left: 16, right: 16,bottom: 15),
              child: Text(
                "Режим работы - с 09:00 до 20:00 в рабочие дня 09:00 - 17:00 в праздничные и выходные дни",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(22, 22, 22, 0.7),
                ),
                textAlign: TextAlign.center,
              )),
          Divider(
            indent: 16,endIndent: 16,
          ),
          InkWell(
            onTap: (){
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Prawilo()));
            },
            child: Prig("Читать правила") ,
          ),

          Divider(
            indent: 16,endIndent: 16,
          ),
          InkWell(
            onTap: (){
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Soglasenya()));
            },
            child:  Prig("Пользовательское соглашения"),
          ),

          Divider(
            indent: 16,endIndent: 16,
          ),
          InkWell(
            onTap: (){
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Contact()));
            },
            child:Prig("Сообщить об ошибке") ,
          ),

          Divider(
            indent: 16,endIndent: 16,
          ),
          InkWell(
            onTap: (){
              showModalBottomSheet(
                  enableDrag: false,

                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20)),
                  ),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Нравится ли вам Krisha.Tm",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16,right: 5,bottom: 10),
                              width: MediaQuery.of(context).size.width/2-32,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border:Border.all(color: Color.fromRGBO(60, 164, 231, 1))
                              ),
                              child: Center(child: Text("Нет",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color.fromRGBO(60, 164, 231, 1)),)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16,right: 5,bottom: 10),
                              width: MediaQuery.of(context).size.width/2-32,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border:Border.all(color: Color.fromRGBO(60, 164, 231, 1))
                              ),
                              child: Center(child: Text("Да",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color.fromRGBO(60, 164, 231, 1)))),
                            )
                          ],
                        )
                      ],
                    );
                  });

            },
            child: Prig("Оценить приложение"),
          )

        ],
      ),
    );
  }
  Prig(String com){
    return   Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(

            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 18,height: 18,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(196, 196, 196, 1)
                ),
              ),
              Text(com,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
