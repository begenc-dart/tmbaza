import 'package:flutter/material.dart';

import 'bot.dart';


class Sobsenya extends StatefulWidget {
  const Sobsenya({Key? key}) : super(key: key);

  @override
  _SobsenyaState createState() => _SobsenyaState();
}

class _SobsenyaState extends State<Sobsenya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        automaticallyImplyLeading: false,
        title: Text(
          "Сообщения",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, int) {
          return InkWell(
            onTap: (){
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Bot()));
            },
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                                color: Color.fromRGBO(60, 164, 231, 0.08)),
                            child: Icon(
                              Icons.camera_alt,
                              size: 20,
                              color: Color.fromRGBO(60, 164, 231, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Бота",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Color.fromRGBO(60, 164, 231, 1),
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Вы отправили фотографию",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "12 окт",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(163, 171, 179, 1)),
                      )
                    ],
                  ),
                ),
                Divider(
                  endIndent: 16,
                  indent: 16,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
