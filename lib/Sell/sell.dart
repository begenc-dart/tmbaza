import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tmbaza/Product/Product.dart';


class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  _SellState createState() => _SellState();
}

class _SellState extends State<Sell> with SingleTickerProviderStateMixin {
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
        iconTheme: IconThemeData(
          color: Color.fromRGBO(22, 22, 22, 1),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Назад",
              style: TextStyle(color: Color.fromRGBO(22, 22, 22, 1)),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: TabBar(
            padding: EdgeInsets.only(bottom: 10),
            labelColor: Color.fromRGBO(22, 22, 22, 1),
            controller: tabController,
            unselectedLabelColor: Color.fromRGBO(22, 22, 22, 1),
            indicatorColor: Color.fromRGBO(22, 22, 22, 0.16),
            indicatorPadding: EdgeInsets.only(left: 17, right: 17),
            automaticIndicatorColorAdjustment: false,
            labelStyle: TextStyle(),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                25.0,
              ),
              color: Colors.white,
            ),
            tabs: <Tab>[
              Tab(
                child: Center(child: Text("Купить")),
              ),
              Tab(
                child: Center(child: Text("Арендовать")),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        ListView(
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: kategor("Квартиры", "241519"),
                ),
                kategor("Дома", "50523"),
                kategor("Дачи", "5453454"),
                kategor("Здания", "5453454"),
                kategor("Комнаты", "5453454"),
                kategor("Магазины", "5453454"),
                kategor("Офисы", "5453454"),
                kategor("Пpомбазы", "5453454"),
                kategor("Возьму", "5453454"),
                kategor("Прочее", "5453454"),
              ],
            ),
          ],
        ),
        ListView(
          children: [
            Column(
              children: [
                kategor("Квартиры", "241519"),
                kategor("Дома", "50523"),
                kategor("Дачи", "5453454"),
                kategor("Здания", "5453454"),
                kategor("Комнаты", "5453454"),
                kategor("Магазины", "5453454"),
                kategor("Офисы", "5453454"),
                kategor("Пpомбазы", "5453454"),
                kategor("Возьму", "5453454"),
                kategor("Прочее", "5453454"),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  kategor(String select, String count) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 15, bottom: 15),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                child: Text(
              select,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )),
            Row(
              children: [
                Text(
                  count,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(163, 171, 179, 1)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 11),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color.fromRGBO(163, 171, 179, 1),
                  ),
                )
              ],
            )
          ]),
        ),
        Divider(
          color: Color.fromRGBO(227, 231, 238, 1),
          indent: 16,
          endIndent: 16,
        ),
      ],
    );
  }
}
