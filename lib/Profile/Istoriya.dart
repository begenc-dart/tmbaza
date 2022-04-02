import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Istoriya extends StatefulWidget {
  const Istoriya({Key? key}) : super(key: key);

  @override
  _IstoriyaState createState() => _IstoriyaState();
}

class _IstoriyaState extends State<Istoriya>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "История платежей",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 15, bottom: 15),
              child: Container(
                color: Color.fromRGBO(246, 248, 252, 1),
                child: TabBar(
                  indicatorWeight: 1,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Color.fromRGBO(22, 22, 22, 1),
                  controller: tabController,
                  unselectedLabelColor: Color.fromRGBO(163, 171, 179, 1),
                  indicatorColor: Color.fromRGBO(22, 22, 22, 0.16),
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      2.0,
                    ),
                    color: Color.fromRGBO(255, 221, 97, 1),
                  ),
                  tabs: <Tab>[
                    Tab(
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Все"),
                        ),
                      ),
                    ),
                    Tab(
                      text: "Пополнения ",
                    ),
                    Tab(
                      text: "Расходы",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        Container(),
        ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("20.12.2021",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(

                          children: [
                            SvgPicture.asset("asset/icon/refresh-circle.svg"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Объявление продлено на 7 дней",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text("1ькомнатная квартира, 70м2, 9/13 эт. посуточно",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),

                        Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(60, 164, 231, 1),size: 18,)
                      ],
                    ),
                  )
                ],
              );
            }),
        Container()
      ]),
    );
  }
}
