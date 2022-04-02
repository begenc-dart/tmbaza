import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:toggle_switch/toggle_switch.dart';

import 'Scet.dart';
import 'Setting.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              "Марьям",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 22, 22, 1)),
            ),
            InkWell(onTap:(){
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Setting()));
            },child: SvgPicture.asset("asset/icon/setting-3.svg"))
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 15, bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (context) => Scet()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "0 ед.",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Text(
                              "Счёт и платежи",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(163, 171, 179, 1)),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 16,
                                color: Color.fromRGBO(163, 171, 179, 1))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("asset/icon/MoneygGeen.svg"),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Пополнить счёт",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(60, 164, 231, 1)),
                                ),
                                Text(
                                  "Номер кабинета: 3765951",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(163, 171, 179, 1)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 16, color: Color.fromRGBO(163, 171, 179, 1))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 15, bottom: 15),
                    child: Text(
                      "Мои объявления",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Center(
                      child: ToggleSwitch(
                        activeBgColor: [Color.fromRGBO(255, 221, 97, 1)],
                        onToggle: (index) {
                          debugPrint(index.toString());
                        },
                        activeFgColor: Color.fromRGBO(22, 22, 22, 1),
                        inactiveFgColor: Color.fromRGBO(163, 171, 179, 1),
                        inactiveBgColor: Color.fromRGBO(246, 248, 252, 1),
                        cornerRadius: 2,
                        minHeight: 40,
                        minWidth: 325,
                        fontSize: 14,
                        totalSwitches: 2,
                        labels: ["Активные ", "Остальныу"],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 15, bottom: 10),
                  child: Text(
                    "Размещайтесь на “Крыше”",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Text(
                    "Ваша объявление увидят тысячи покупателей и арендаторов недвижимости",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 20, bottom: 20),
                  child: InkWell(
                    onTap: () {
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
                              offset:
                                  Offset(0, 15), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Color.fromRGBO(60, 164, 231, 1)),
                      child: Center(
                          child: Text(
                        "Подать обявления",
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
          )
        ],
      ),
    );
  }
}
