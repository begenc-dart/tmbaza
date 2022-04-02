import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Velayat extends StatefulWidget {
  const Velayat({Key? key}) : super(key: key);

  @override
  _VelayatState createState() => _VelayatState();
}

class _VelayatState extends State<Velayat> {
  @override
  final TextEditingController _search = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color.fromRGBO(22, 22, 22, 1),
        ),
        title: Text(
          "Где искать",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(22, 22, 22, 1)),
        ),
      ),
      body: Container(
height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(246, 248, 252, 1),
        child: ListView(
          children: [
            Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15,
                    right: 10,
                    left: 10,
                    bottom: 10),
                child: TextField(
                  enableSuggestions: false,

                  maxLengthEnforced: false,
                  enableInteractiveSelection: false,
                  controller: _search,
                  cursorColor:
                  Color.fromRGBO(104, 109, 118, 1),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.search,
                  autofocus: false,
                  // onEditingComplete: () {
                  //   FocusManager.instance.primaryFocus!
                  //       .unfocus();
                  //   searchMettod();
                  // },
                  decoration: InputDecoration(
hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color.fromRGBO(163, 171, 179, 1)),
                      hintText: "Inactive",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(227, 231, 238, 1),
                        ),
                      ),

                      enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide(
                        color: Color.fromRGBO(227, 231, 238, 1),
                      ),),
                      focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(
                        color: Color.fromRGBO(227, 231, 238, 1),
                      ),),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromRGBO(
                            22, 22, 22, 1),
                      ),

                      filled: true,
                      fillColor: Colors.transparent),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 50,
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16,top: 15,bottom: 15),
                  child: Text("Весь Туркменистан",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16,top: 16,bottom: 15),
                      child: Text("Популярные города",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color.fromRGBO(163, 171, 179, 1)),),
                    ),
                    country(),
                    country(),
                    country(),
                    country()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  country(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Ашхабад",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(163, 171, 179, 1),),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15,bottom: 15),
          child: Divider(
            indent: 16,
            endIndent: 15,
          ),
        ),
      ],
    );
  }
}
