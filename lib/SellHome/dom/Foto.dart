import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Mestopolozenya.dart';


class FotoDom extends StatefulWidget {
  const FotoDom({Key? key}) : super(key: key);

  @override
  _FotoDomState createState() => _FotoDomState();
}

class _FotoDomState extends State<FotoDom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16, bottom: 10),
                child: Text(
                  "Добавить фото",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
                child: Text(
                  "Объявления с фотографиями получает в 5 раз больше просмотров",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 16, right: 16),
                child: Container(
                  height: 125,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color.fromRGBO(60, 164, 231, 1))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Icon(
                          Icons.add_circle,
                          color: Color.fromRGBO(60, 164, 231, 1),
                          size: 42 ,
                        ),
                      ),
                      Text(
                        "Добавить фото",
                        style: TextStyle(
                            color: Color.fromRGBO(60, 164, 231, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.check,color: Color.fromRGBO(48, 173, 110, 1),),
                    ),
                    Expanded(child: Text("Добавьте минимум одно фото зала, спальни или детской комнаты",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
                  ],
                ),
              ),
              close("В кадре не должны присутствовать люди"),
              close("Не добавляйте скриншоты, картинки, фотоколлажи")
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.of(
                context,
              ).push(
                  MaterialPageRoute(builder: (context) => Mestopolozenya()));
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
close(String text){
    return  Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.close,color: Color.fromRGBO(211, 51, 103, 1),),
          ),
          Expanded(child: Text(text,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
        ],
      ),
    );
}
}
