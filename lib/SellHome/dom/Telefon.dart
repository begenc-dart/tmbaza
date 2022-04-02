import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Dobawit.dart';

class PhoneDom extends StatefulWidget {
  const PhoneDom({Key? key}) : super(key: key);

  @override
  _PhoneDomState createState() => _PhoneDomState();
}

class _PhoneDomState extends State<PhoneDom> {
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
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
                Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Text("Укажите точное местоположения",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18))),
                Padding(
                  padding: const EdgeInsets.only(left: 16,bottom: 20),
                  child: Text("Телефон",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(
                      context,
                    ).push(
                        MaterialPageRoute(builder: (context) => Dobawit()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 16,right: 16,bottom: 15),
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
                        color: Color.fromRGBO(60, 164, 231, 1)
                    ),
                    child: Center(child: Text("Добавить номер",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),)),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(
                context,
              ).push(
                  MaterialPageRoute(builder: (context) => PhoneDom()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 16,right: 16,top: 15,bottom: 15),
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
                  color: Color.fromRGBO(60, 164, 231, 1)
              ),
              child: Center(child: Text("Далее",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
