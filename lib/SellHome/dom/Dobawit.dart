import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dobawit extends StatefulWidget {
  const Dobawit({Key? key}) : super(key: key);

  @override
  _DobawitState createState() => _DobawitState();
}

class _DobawitState extends State<Dobawit> {
  final _formkey = GlobalKey<FormState>();
  bool otomatikKontrol = false;
  final TextEditingController _phoneControl = TextEditingController();

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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 100, right: 16, bottom: 15, top: 12),
                  child: Text(
                    "Чтобы размещать объявления и комментарии, подвертите ваш номер мобильного телефона",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Номер телефона",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(163, 171, 179, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 5, bottom: 15),
                  child: TextFormField(
                    controller: _phoneControl,
                    keyboardType: TextInputType.number,
                    cursorColor: Color.fromRGBO(104, 109, 118, 1),
                    decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.red),
                      prefixText: "+9936",
                      hintText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(227, 231, 238, 1),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(227, 231, 238, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(227, 231, 238, 1),
                        ),
                      ),
                    ),
                    // validator: (jog) {
                    //   if (jog!.length == 0) {
                    //     return sonuc
                    //         .data!.gosmaca.doldur;
                    //   } else if (jog.length < 3) {
                    //     return sonuc.data!.gosmaca
                    //         .telefon;
                    //   } else if (jog.length == 7) {
                    //     return null;
                    //   } else {
                    //     return sonuc.data!.gosmaca
                    //         .telefon;
                    //   }
                    // },
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Dobawit()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 15),
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
                      "Добавить номер",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
