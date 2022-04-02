import 'package:flutter/material.dart';

import 'Bonusah.dart';
import 'Istoriya.dart';

class Scet extends StatefulWidget {
  const Scet({Key? key}) : super(key: key);

  @override
  _ScetState createState() => _ScetState();
}

class _ScetState extends State<Scet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        title: Text("Счёт и платежи",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
      ),
      body: ListView(
        children: [
          money("Общая сумма на счёт", "0 ед"),
          money("Общая сумма на счёт", "0 Б"),
          Divider(
            endIndent: 16,indent: 16,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 15, 16, 15),
            child: InkWell(
              onTap: (){
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(
                    builder: (context) => Bonusah()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Бонусы и срок их действия",style: TextStyle(color: Color.fromRGBO(60, 164, 231, 1),fontWeight: FontWeight.w500,fontSize: 14),),
                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(163, 171, 179, 1),)
                ],
              ),
            ),
          ),
          Divider(
            endIndent: 16,indent: 16,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 15, 16, 15),
            child: InkWell(
              onTap: (){
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(
                    builder: (context) => Istoriya()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("История платежей",style: TextStyle(color: Color.fromRGBO(60, 164, 231, 1),fontWeight: FontWeight.w500,fontSize: 14),),
                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(163, 171, 179, 1),)
                ],
              ),
            ),
          ),
          Container(
            color: Color.fromRGBO(255, 221, 97, 0.4),
            child: Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,top: 15,bottom: 15),
              child: Column(
                children: [
                  Text("Пополните счёт на сумму от 5000 мнт получите до 30% бонусам"),
                  Padding(
                    padding: const EdgeInsets.only( top: 15),
                    child: InkWell(
                      onTap: (){
                        // Navigator.of(
                        //   context,
                        // ).push(
                        //     MaterialPageRoute(builder: (context) => Dopolniteldi()));
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
                              "Пополнить счёт",
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
          )
        ],
      ),
    );
  }
  money(String main,String com){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 15, 16, 5),
          child: Text(main,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(com,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
        )
      ],
    );
  }
}
