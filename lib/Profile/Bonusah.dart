import 'package:flutter/material.dart';
class Bonusah extends StatefulWidget {
  const Bonusah({Key? key}) : super(key: key);

  @override
  _BonusahState createState() => _BonusahState();
}

class _BonusahState extends State<Bonusah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        title: Text("О бонусах",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black,),),
      ),
    body: ListView(
      children: [
        Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child:  Column(

              children: List.generate(5, (i) {
                return  ExpansionTile(
                  textColor: Colors.black,
                  iconColor: Colors.black,
                  initiallyExpanded: false,
                  title: Text(
                    "Как получить бонусы?",
                    style: TextStyle(
                        fontWeight:
                        FontWeight
                            .w500,
                        fontSize: 16),
                  ),
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 36,right: 16,top: 15,bottom: 15),
                    child: Text("Пополняйте счёт на сумму от 5000 мнт и получите до 30% бонусов.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                  )
                  ],
                );

              }),
            )

        ),
      ],
    ),
    );
  }
}
