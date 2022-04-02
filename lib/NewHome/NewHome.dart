import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tmbaza/NewHomeDetal/HomeDetails.dart';
import 'package:tmbaza/NewHome_Setting/NewHome_Setting.dart';


class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        iconTheme: IconThemeData(color: Color.fromRGBO(22, 22, 22, 1),),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text("Купить прочее недвиж...",style: TextStyle(color: Color.fromRGBO(22, 22, 22, 1)),)),
            InkWell(
              onTap: (){
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(
                    builder: (context) => Home_setting(

                    )));
              },
              child: Row(
                children: [
                  Text("Фильтр",style: TextStyle(color: Color.fromRGBO(22, 22, 22, 1)),),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 10),
                    child: SvgPicture.asset("asset/icon/setting-3.svg"),
                  )
                ],
              ),
            )
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Align(
            alignment: Alignment.center,
            child: TabBar(
              labelColor: Color.fromRGBO(22, 22, 22, 1),
              controller: tabController,
              unselectedLabelColor: Color.fromRGBO(22, 22, 22, 1),
              indicatorColor: Color.fromRGBO(255, 0, 0, 1),
              indicatorPadding:
                  EdgeInsets.only(left: 17, right: 17, bottom: 10),
              labelStyle: TextStyle(),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: Colors.white,
              ),
              tabs: <Tab>[
                Tab(
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Cписком"),
                    ),
                  ),
                ),
                Tab(
                  text: "На карте",
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 65,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Row(
                        children: [

                          country("Ашхабат"),
                          country("Ашхабат"),
                          country("Ашхабат"),
                          country("Ашхабат"),
                          country("Ашхабат"),
                          country("Ашхабат"),
                          country("Ашхабат"),
                          country("Ашхабат"),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                    height: 65,
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 16, bottom: 2),
                            child: Text(
                              "Новостройки в Туркменистане",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 16, bottom: 17),
                            child: Text(
                              "1635 новостроек",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            )),
                      ],
                    )),
              ]),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InkWell(
                  onTap: (){
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(
                        builder: (context) => HomeDetails(

                        )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10 ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            4.0,
                          ),
                          color: Color.fromRGBO(255, 255, 255, 1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, top: 15, bottom: 4),
                            child: Text(
                              "Rams City",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 10),
                            child: Text(
                              "от 795 000 m за м²",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 10, bottom: 10),
                                child: Container(
                                  width: 100,
                                  alignment: Alignment.center,
                                  height: 23,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        4.0,
                                      ),
                                      color: Color.fromRGBO(60, 164, 231, 1)),
                                  child: Text(
                                    "0% Рассрочка",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                  width: 90,
                                  alignment: Alignment.center,
                                  height: 23,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        4.0,
                                      ),
                                      color: Color.fromRGBO(255, 221, 97, 1)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "asset/icon/Home.svg",
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 6),
                                        child: Text(
                                          "Ипотека",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Center(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.0,
                                    ),
                                    color: Color.fromRGBO(255, 221, 97, 1),
                                  ),
                                  child: Stack(children: [
                                    Image.asset("asset/image/2.png"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,top: 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            4.0,
                                          ),
                                          color: Color.fromRGBO(22, 22, 22, 0.7),
                                        ),
                                        width: 66,
                                       height: 22 ,
                                        child: Center(child: Text("Строится",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color.fromRGBO(255, 255, 255, 1)),)),
                                      ),
                                    )
                                  ]))),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10,bottom: 10),
                            child: Text("Алматы, Медеуский р-н, ул. Жамакаева, 252",style: TextStyle(fontSize: 14),),
                          ),
                          Divider(
                            color: Color.fromRGBO(227, 231, 238, 1),
                             indent: 15,
                            endIndent: 16,
                          ),
                          Row(
                            children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 16,top: 17,bottom: 17,right: 10),
                               child: Container(
                                 width: 5,
                                 height: 5,
                                 decoration: BoxDecoration(
                                     color: Color.fromRGBO(48, 173, 110, 1),
                                     shape: BoxShape.circle
                                 ),
                               ),
                             ),
                              Text("24 квартиры",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16,bottom: 10,right: 20),
                            child: Text("1-комн. 41.2 м².........................................от 36 400 000 m",),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16,bottom: 10,right: 20),
                            child: Text("2-комн. 68.3 м².........................................от 57 190 000 m"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16,bottom: 10,right: 20),
                            child: Text("3-комн. 91.6 м².........................................от 77 600 000 m"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text("Смотреть все квартиры",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(48, 173, 110, 1)),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(Icons.arrow_forward_ios,size: 14,),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15,top: 11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 156,
                              height: 40,
                              decoration: BoxDecoration(
                              border: Border.all(
                    color: Color.fromRGBO(48, 173, 110, 1),
                    width: 2,
                    ),
                              borderRadius: BorderRadius.circular(
                    4.0,
                    ),),
                                  child: Center(child: Text("Заказать звонок",style: TextStyle(color: Color.fromRGBO(48, 173, 110, 1),fontSize: 16,fontWeight: FontWeight.w600),)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Container(
                                    width: 156,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(48, 173, 110, 1),
                                      borderRadius: BorderRadius.circular(
                                        4.0,
                                      ),),
                                    child: Center(child: Text("Позвонить",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 16,fontWeight: FontWeight.w600),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: 2,
            ))
          ],
        ),
        Container()
      ]),
    );
  }

  country(String country) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10, bottom: 20),
      child: Container(
        width: 80,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            4.0,
          ),
          color: Color.fromRGBO(48, 173, 110, 1),
        ),
        child: Text(country),
      ),
    );
  }
}

