import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Gid_Profile extends StatefulWidget {
  String appTitle;

  Gid_Profile({required this.appTitle});

  @override
  _Gid_ProfileState createState() => _Gid_ProfileState();
}

class _Gid_ProfileState extends State<Gid_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading:
            Icon(Icons.arrow_back_ios, color: Color.fromRGBO(22, 22, 22, 1)),
        title: Row(
          children: [
            Expanded(
                child: Text(
              widget.appTitle,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color.fromRGBO(22, 22, 22, 1)),
            )),
            SvgPicture.asset("asset/icon/direct-send.svg"),
            
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 20,bottom: 20),
                  child: Text("Как проверить квартиру на юридическую чистоту",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
                ),
                Image.asset("asset/image/2.png",width: MediaQuery.of(context).size.width,),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 15,bottom: 20),
                  child: Text("Рассказываем, на что обратить внимание перед покупкой жилья, чтобы это не привело к потерям.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,bottom: 10),
                  child: Text("Проверьте правоустанавливающие документы ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16),
                  child: Text("""1. Попросите у продавца правоустанавливающий документ и сфотографируйте его на телефон или перепишите информацию. Позже сравните с данными, указанными в справке об обременениях.

В Казахстане законно действуют порядка 20 видов правоустанавливающих документов. Наравне с договорами купли-продажи, мены, дарения, приватизации это могут быть: свидетельства о праве на наследство, акты о приобретении с публичных торгов, брачные договоры и другое.

2. Запросите техпаспорт на квартиру, в котором указаны идентификационные и технические характеристики: материал, год постройки дома, кадастровый номер и план квартиры с указанием количества комнат, размеры. Главное — должны быть отражены реальные показатели объекта.

Пройдитесь с этим планом по квартире. Проверьте, не была ли проведена перепланировка, на месте ли дверные и оконные проёмы, стены и перегородки. В случае подозрений попросите продавца вызвать техника из Центра по недвижимости (бывш. БТИ). Процедура платная, занимает несколько дней.

Перечисленные документы должны быть зарегистрированы в органах юстиции РК, иметь соответствующие подписи и печати.

3. Сравните информацию о собственнике квартиры, указанную в правоустанавливающем документе, с удостоверением личности продавца. Если есть расхождение хотя бы в одной букве или цифре, попросите продавца устранить их до заключения сделки.

                  """,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
