import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class News_Profile extends StatefulWidget {
  String name;

  News_Profile({required this.name});

  @override
  _News_ProfileState createState() => _News_ProfileState();
}

class _News_ProfileState extends State<News_Profile> {
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
                widget.name,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(22, 22, 22, 1)),
              ),
            ),
            SvgPicture.asset("asset/icon/direct-send.svg")
          ],
        ),
      ),
      body: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 16,right: 16,bottom: 15),
              child: Text("В РК предлагают проверять сделки с недвижимостью от 50 млн тенге",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
            ),
            Center(child: Image.asset("asset/image/2.png")),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,bottom: 15),
              child: Text("Пенсионные накопления постоянно увеличиваются за счёт взносов и инвестдохода. Статистика по количеству счетов и суммам на них постоянно обновляется. Общая сумма накоплений на 1 сентября составила 12.9 трлн тенге. Для владельцев более 1.3 млн пенсионных счетов доступно порядка 2.2 трлн тенге, пояснили в фонде на официальный запрос Krisha.kz.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Text("Oпубликовано 10 ноября 2021 г,. 12:13",style: TextStyle(fontSize: 12,color: Color.fromRGBO(163, 171, 179, 1)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Text("104 просмотра",style: TextStyle(fontSize: 12,color: Color.fromRGBO(163, 171, 179, 1))),
            )
          ],
        ),
      ),
    );
  }
}
