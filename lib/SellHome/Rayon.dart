import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Mikrayon.dart';


class Rayon extends StatefulWidget {
  const Rayon({Key? key}) : super(key: key);

  @override
  _RayonState createState() => _RayonState();
}

class _RayonState extends State<Rayon> {
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(246, 248, 252, 1),
        body: SafeArea(
          child: Container(
            child: CustomScrollView(slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.arrow_back_ios),
                                    Text(
                                      "Закрыть",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(60, 164, 231, 1)),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Diva(Color.fromRGBO(60, 164, 231, 1)),
                                  Diva(Color.fromRGBO(227, 231, 238, 1)),
                                  Diva(Color.fromRGBO(227, 231, 238, 1)),
                                  Diva(Color.fromRGBO(227, 231, 238, 1)),
                                  Diva(Color.fromRGBO(227, 231, 238, 1)),
                                  Diva(Color.fromRGBO(227, 231, 238, 1)),
                                  Diva(Color.fromRGBO(227, 231, 238, 1)),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 15, bottom: 15),
                                child: Text(
                                  "Укажите район",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 24),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, right: 10, left: 10, bottom: 10),
                                child: Container(
                                  child: TextField(
                                    enableSuggestions: false,
                                    maxLengthEnforced: false,
                                    enableInteractiveSelection: false,
                                    controller: _search,
                                    cursorColor: Color.fromRGBO(104, 109, 118, 1),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.search,
                                    autofocus: false,
                                    // onEditingComplete: () {
                                    //   FocusManager.instance.primaryFocus!
                                    //       .unfocus();
                                    //   searchMettod();
                                    // },
                                    decoration: InputDecoration(
                                        hintText: "Поиск по стране, городу, району",
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
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: Color.fromRGBO(104, 109, 118, 1),
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0,bottom: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 16, top: 16, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(

                                    "Не указывать район",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  ),
                                  Text("Ваш объект не найдут при поиске по району", style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(
                              context,
                            ).push(
                                MaterialPageRoute(builder: (context) => Mikrayon()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10,top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Ашхабад",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                                    Icon(Icons.arrow_forward_ios,size: 20,color: Color.fromRGBO(163, 171, 179, 1),)
                                  ],
                                ),
                              ),
                              Divider(
                                indent: 16,
                                endIndent: 16,color: Color.fromRGBO(227, 231, 238, 1),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: 10, // 1000 list items
                ),
              ),
            ]),
          ),
        ));
  }

  Diva(Color check) {
    return Container(
      width: 45,
      height: 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2)), color: check),
    );
  }
}
