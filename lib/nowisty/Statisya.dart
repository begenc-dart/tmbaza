import 'package:flutter/material.dart';

class Statiya extends StatefulWidget {
  const Statiya({Key? key}) : super(key: key);

  @override
  _StatiyaState createState() => _StatiyaState();
}

class _StatiyaState extends State<Statiya> {
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
          "Cтатьи",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 15, 16, 15),
            child: Text(
              "Статьи о недвижимости Туркменистана",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Image.asset(
            "asset/image/2.png",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 15, 16, 25),
            child: Text(
              "Пенсионные накопления постоянно увеличиваются за счёт взносов и инвестдохода. Статистика по количеству счетов и суммам на них постоянно обновляется. Общая сумма накоплений на 1 сентября составила 12.9 трлн тенге. Для владельцев более 1.3 млн пенсионных счетов доступно порядка 2.2 трлн тенге, пояснили в фонде на официальный запрос Krisha.kz.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
            child: Text(
              "Наталья калмыкова, заместитель директора АН sweet home",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Image.asset("asset/image/6.png"),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Пенсионные накопления постоянно увеличиваются за счёт взносов и инвестдохода. Статистика по количеству счетов и суммам на них постоянно обновляется. Общая сумма накоплений на 1 сентября составила ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 20),
            child: Text(
              "Пенсионные накопления постоянно увеличиваются за счёт взносов и инвестдохода. Статистика по количеству счетов и суммам на них постоянно обновляется. Общая сумма накоплений на 1 сентября составила ",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  fontSize: 14),
            ),
          ),
          Container(
            color: Color.fromRGBO(246, 248, 252, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 40,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(60, 164, 231, 1),
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 16, bottom: 15),
                  child: Text("""Сколько переводили ежемесячно 
— 25–31 января — 216.8 млрд тенге;
— февраль — 444.8 млрд;
— март — 311.7 млрд;
— апрель — 253 млрд;
— май — 173.5 млрд;
— июнь — 147.3 млрд;
— июль — 114.4 млрд;
— август — 108.2 млрд;
— сентябрь — 102.7 млрд. """),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 20),
            child: Text("Oпубликовано 10 ноября 2021 г,. 12:13",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,bottom: 20),
            child: Text("104 просмотра",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1))),
          )
        ],
      ),
    );
  }
}
