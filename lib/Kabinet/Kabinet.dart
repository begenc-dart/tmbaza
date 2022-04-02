import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tmbaza/SellHome/City.dart';
import 'package:tmbaza/SellHome/Dacu/Dacu.dart';
import 'package:tmbaza/SellHome/Magazin/Magazin.dart';
import 'package:tmbaza/SellHome/Ofis/Of%C4%B1s.dart';
import 'package:tmbaza/SellHome/Pomoseniya/pomeseniya.dart';
import 'package:tmbaza/SellHome/Proce/Proce.dart';
import 'package:tmbaza/SellHome/Sklat/Sklat.dart';
import 'package:tmbaza/SellHome/Ucastok/Ucastok.dart';
import 'package:tmbaza/SellHome/Zadaniya/Zadaniya.dart';
import 'package:tmbaza/SellHome/dom/Info.dart';

import 'Licny_Kab.dart';

class Kabinet extends StatefulWidget {
  const Kabinet({Key? key}) : super(key: key);

  @override
  _KabinetState createState() => _KabinetState();
}

class _KabinetState extends State<Kabinet> {
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
            Text(
              "Moи объявления",
              style: TextStyle(
                  color: Color.fromRGBO(22, 22, 22, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SvgPicture.asset("asset/icon/setting-3.svg")
          ],
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.of(
                context,
              ).push(
                  MaterialPageRoute(builder: (context) => Licny_kab()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 16),
                        child: Text(
                          "Укажите параметры квартиры",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset("asset/icon/login.svg"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Укажите параметры квартиры",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color.fromRGBO(60, 164, 231, 1)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 20, bottom: 10),
                    child: Text(
                      "Размещайтесь на “Крыше”",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, bottom: 15, right: 16),
                    child: Text(
                      "Ваше объявление увидят тысячи покупателей и арендаторов недвижимости",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            enableDrag: false,
                            isDismissible: false,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    trailing: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: new SvgPicture.asset(
                                            "asset/icon/close-circle.svg")),
                                    title: new Text(
                                      'Вы хотите',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Divider(
                                    color: Color.fromRGBO(246, 248, 252, 1),
                                  ),
                                  ListTile(
                                      trailing:
                                          new Icon(Icons.arrow_forward_ios),
                                      title: new Text('Продать'),
                                      onTap: () {
                                        sheep();
                                      }),
                                  Divider(
                                    color: Color.fromRGBO(227, 231, 238, 1),
                                  ),
                                  ListTile(
                                    trailing: new Icon(Icons.arrow_forward_ios),
                                    title: new Text('Сдать в аренду'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  Divider(
                                    color: Color.fromRGBO(227, 231, 238, 1),
                                  ),
                                  ListTile(
                                    trailing: new Icon(Icons.arrow_forward_ios),
                                    title: new Text('Взять в аренду'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(60, 164, 231, 1),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.08),
                                  spreadRadius: 0,
                                  blurRadius: 30,
                                  offset: Offset(0, 15))
                            ]),
                        child: Center(
                            child: Text(
                          "Подать объявление",
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

  sheep() {
    showModalBottomSheet(
        enableDrag: false,
        isDismissible: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios,color: Color.fromRGBO(22, 22, 22, 1),)),
                  trailing: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child:
                          new SvgPicture.asset("asset/icon/close-circle.svg")),
                  title: new Text(
                    'Вы хотите',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(246, 248, 252, 1),
                ),
                ListTile(
                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                  title: new Text('Квартиру',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(
                        MaterialPageRoute(builder: (context) => City()));
                  },
                ),
                Divider(
                  color: Color.fromRGBO(227, 231, 238, 1),
                ),
                ListTile(
                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                  title: new Text('Дом',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(
                        MaterialPageRoute(builder: (context) => InfoDom()));
                  },
                ),
                Divider(
                  color: Color.fromRGBO(227, 231, 238, 1),
                ),
                ListTile(
                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                  title: new Text('Участок',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(
                        MaterialPageRoute(builder: (context) => Ucastok()));
                  },
                ),
                Divider(
                  color: Color.fromRGBO(227, 231, 238, 1),
                ),
                ListTile(
                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                  title: new Text('Дачу',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(
                        MaterialPageRoute(builder: (context) => Dacy()));
                  },
                ),
                Divider(
                  color: Color.fromRGBO(227, 231, 238, 1),
                ),
                ListTile(
                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                  title: new Text('Коммерческую недвижимость',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                  onTap: () {
                    showModalBottomSheet(
                        enableDrag: false,
                        isDismissible: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.arrow_back_ios,color: Color.fromRGBO(22, 22, 22, 1),)),
                                  trailing: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                      child:
                                      new SvgPicture.asset("asset/icon/close-circle.svg")),
                                  title: new Text(
                                    'Вы хотите',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Divider(
                                  color: Color.fromRGBO(246, 248, 252, 1),
                                ),
                                ListTile(
                                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                                  title: new Text('Помещения',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                                  onTap: () {
                                    Navigator.of(
                                      context,
                                    ).push(
                                        MaterialPageRoute(builder: (context) => Pomoseniya()));
                                  },
                                ),
                                Divider(
                                  color: Color.fromRGBO(227, 231, 238, 1),
                                ),
                                ListTile(
                                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                                  title: new Text('Магазин бутик',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                                  onTap: () {
                                    Navigator.of(
                                      context,
                                    ).push(
                                        MaterialPageRoute(builder: (context) => Magazin()));
                                  },
                                ),
                                Divider(
                                  color: Color.fromRGBO(227, 231, 238, 1),
                                ),
                                ListTile(
                                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                                  title: new Text('Здания',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                                  onTap: () {
                                    Navigator.of(
                                      context,
                                    ).push(
                                        MaterialPageRoute(builder: (context) => Zadaniya()));
                                  },
                                ),
                                Divider(
                                  color: Color.fromRGBO(227, 231, 238, 1),
                                ),
                                ListTile(
                                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                                  title: new Text('Офис',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                                  onTap: () {
                                    Navigator.of(
                                      context,
                                    ).push(
                                        MaterialPageRoute(builder: (context) => Ofis()));
                                  },
                                ),
                                Divider(
                                  color: Color.fromRGBO(227, 231, 238, 1),
                                ),
                                ListTile(
                                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                                  title: new Text('Промбазы и складу',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                                  onTap: () {
                                    Navigator.of(
                                      context,
                                    ).push(
                                        MaterialPageRoute(builder: (context) => Sklat()));
                                  },
                                ),

                              ],
                            ),
                          );
                        });
                  },
                ),
                Divider(
                  color: Color.fromRGBO(227, 231, 238, 1),
                ),
                ListTile(
                  trailing: new Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(22, 22, 22, 1),size: 20,),
                  title: new Text('Прочую недвижимость',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(
                        MaterialPageRoute(builder: (context) => Proce()));
                  },
                ),
              ],
            ),
          );
        });
  }
}
