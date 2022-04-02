import 'package:flutter/material.dart';
import 'package:tmbaza/Gid_profile/Gid_profile.dart';

class Gid extends StatefulWidget {
  const Gid({Key? key}) : super(key: key);

  @override
  _GidState createState() => _GidState();
}

class _GidState extends State<Gid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 252, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading: Icon(Icons.arrow_back_ios,color: Color.fromRGBO(22, 22, 22, 1),),
        title: Text(
          "Крыша гид",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Color.fromRGBO(22, 22, 22, 1),),
        ),
        elevation: 0,
      ),
      body: CustomScrollView(slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 80,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 50,
                      color: Color.fromRGBO(255, 221, 97, 1),
                    ),
                    Positioned(
                      top: 10,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(
                              context,
                            ).push(MaterialPageRoute(
                                builder: (context) => Gid_Profile(appTitle: "Как проверить квартиру на юридическую чистоту",

                                )));
                          },
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 30,
                            height: 75,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                border: Border(),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(4))),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Как проверить квартиру на юридическую чистоту",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )),
                                VerticalDivider(
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 16),
                                  child: Icon(Icons.arrow_forward_ios),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ])),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16,top: 10),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width - 30,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          border: Border(),
                          borderRadius: BorderRadius.all(
                              Radius.circular(4))),
                      child: Row(
                        children: [
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Как проверить квартиру на юридическую чистоту",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                          VerticalDivider(
                            indent: 15,
                            endIndent: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 15, left: 16),
                            child: Icon(Icons.arrow_forward_ios),
                          )
                        ],
                      ),
                    ),
                  );
                }, childCount: 5,))
      ]),
    );
  }
}
