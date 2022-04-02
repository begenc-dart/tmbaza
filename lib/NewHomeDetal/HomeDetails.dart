import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        iconTheme: IconThemeData(color: Color.fromRGBO(22, 22, 22, 1)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Новостройки",
              style: TextStyle(color: Color.fromRGBO(22, 22, 22, 1)),
            ),
            Row(
              children: [
                SvgPicture.asset("asset/icon/heart.svg"),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 20),
                  child: SvgPicture.asset("asset/icon/direct-send.svg"),
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 156,
            child: CustomScrollView(
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  Container(
                    color: Color.fromRGBO(246, 248, 252, 1),
                    child: Column(
                      children: [
                        Container(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "Rams City",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              ),
                              Container(
                                height: 65,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    children: [
                                      Row(
                                        children: [
                                          country("Фотографии"),
                                          country("Расположение"),
                                          country("Квартиры и помещения")
                                        ],
                                      ),
                                    ]),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 20),
                                  child: Text(
                                    "ЖК Navoi 3.0 в Алматы",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 10,
                                    top: 5,
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "От 447 200 тмт за м",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, bottom: 20),
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
                                Center(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4.0),
                                      child: Image.asset(
                                        "asset/image/2.png",
                                      )),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    withIcon("asset/icon/Home.svg",
                                        "Состояние дома", "Строится"),
                                    withoutIcon(
                                        "Срок сдачи", "III квартал 2022 г."),
                                    withIcon("asset/icon/location.svg",
                                        "Расположение", "Ашгабат"),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 25),
                                      child: withoutIcon(
                                          "Застройщик", "Рамс Казахстан"),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, top: 15, bottom: 15),
                                  child: Text(
                                    "Жилой комплекс на карте",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Center(
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Image.asset(
                                          "asset/image/3.png",
                                        )),
                                  ),
                                ),
                                Column(
                                  children: [
                                    info("Застройщик", "Рамс Казахстан"),
                                    info("Этажность:", "14-16 этажей"),
                                    info("Высота потолков", "2.7 м"),
                                    info("Тип дома", "монолитный"),
                                    info("Количество квартир", "456"),
                                    info("Отделка", "черновая"),
                                    info("Лифт", "грузовой, пассажирский")
                                  ],
                                ),
                                Container(
                                  color: Color.fromRGBO(255, 221, 97, 1),
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, top: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Квартиры и помещения ЖК Navoi 3.0",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 85,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        22, 22, 22, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(4),
                                                    )),
                                                child: Center(
                                                    child: Text(
                                                  "Квартиры",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1)),
                                                )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Container(
                                                  width: 85,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                      color: Color.fromRGBO(
                                                          246, 248, 252, 1),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(4),
                                                      )),
                                                  child: Center(
                                                      child: Text(
                                                    "Квартиры",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14,
                                                        color: Color.fromRGBO(
                                                            22, 22, 22, 1)),
                                                  )),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 16, top: 20, bottom: 50),
                                          child: Container(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                            child:  Column(

                                              children: List.generate(5, (i) {
                                                return  ExpansionTile(
                                                  textColor: Colors.black,
                                                  iconColor: Colors.black,
                                                  initiallyExpanded: false,
                                                  title: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "1-комнатные",
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w500,
                                                            fontSize: 16),
                                                      ),
                                                      Text(
                                                        "от 32 млн Mnt",
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w400,
                                                            fontSize: 16,
                                                            color: Color
                                                                .fromRGBO(
                                                                163,
                                                                171,
                                                                179,
                                                                1)),
                                                      )
                                                    ],
                                                  ),
                                                  children: [
                                                    // InkWell(
                                                    //     onTap: () {
                                                    //       // Navigator.of(context,
                                                    //       //     rootNavigator: false)
                                                    //       //     .push(MaterialPageRoute(
                                                    //       //     builder: (context) =>
                                                    //       //         CateProduct(
                                                    //       //           ady: url == 'ru'
                                                    //       //               ? date.categoryNameRu
                                                    //       //               : date.categoryNameTm,
                                                    //       //           tertip: 'Tertip',
                                                    //       //           id: date.categoryId,
                                                    //       //         )));
                                                    //     },
                                                    //     child: Container(
                                                    //         height: 50,
                                                    //         padding: EdgeInsets.only(left: 40),
                                                    //         alignment: Alignment.centerLeft,
                                                    //         child: Text(
                                                    //           Languag.data!.gosmaca.hemmeSayla,
                                                    //           style: TextStyle(
                                                    //               fontSize: 16,
                                                    //               color: Colors.red),
                                                    //         ))),
                                                    Container(
                                                      color: Color.fromRGBO(
                                                          246, 248, 252, 1),
                                                      height:
                                                      5 * 50.toDouble(),
                                                      child: ListView.builder(
                                                          physics:
                                                          NeverScrollableScrollPhysics(),
                                                          itemCount: 5,
                                                          itemBuilder:
                                                              (BuildContext
                                                          context,
                                                              int indexCate) {
                                                            return InkWell(
                                                              onTap: () {
                                                                // Navigator.of(context,
                                                                //     rootNavigator: false)
                                                                //     .push(MaterialPageRoute(
                                                                //     builder: (context) =>
                                                                //         SybCate(
                                                                //           ady: url == 'ru'
                                                                //               ? date
                                                                //               .categorySubcategories[
                                                                //           indexCate]
                                                                //               .subcategoryNameRu
                                                                //               : date
                                                                //               .categorySubcategories[
                                                                //           indexCate]
                                                                //               .subcategoryNameTm,
                                                                //           tertip: 'Tertip',
                                                                //           id: date
                                                                //               .categorySubcategories[
                                                                //           indexCate]
                                                                //               .subcategoryId,
                                                                //         )));
                                                              },
                                                              child:
                                                              Container(
                                                                height: 50,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          16,
                                                                          right:
                                                                          16),
                                                                      child:
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            "44,6 m",
                                                                            style: TextStyle(
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight
                                                                                    .w400,
                                                                                color: Color
                                                                                    .fromRGBO(
                                                                                    60,
                                                                                    164,
                                                                                    231,
                                                                                    1)),
                                                                          ),
                                                                          Text(
                                                                            "32 000 000 Mnt",
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight
                                                                                    .w400,
                                                                                fontSize: 16),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                    )
                                                  ],
                                                );

                                              }),
                                            )

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 20, bottom: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(255, 221, 97, 1),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget aliquam nulla praesent lobortis suspendisse aliquet enim ipsum, posuere. Rutrum pellentesque lacinia in gravida cursus congue non. Blandit tincidunt lobortis viverra arcu id orci habitant lectus eget. Ac mauris bibendum aliquam faucibus id.",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 15),
                                  child: Text(
                                    "Описание",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16),
                                  child: Text(
                                    "NAVOI 3.0 – идеальное пространство для вашей семьи с исключительно комфортной для проживания внутренней инфраструктурой, новым революционным форматом зон общего пользования All-in-One, продуманными планировками квартир. ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, top: 8, bottom: 15),
                                  child: Text(
                                    "Показать все",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(60, 164, 231, 1)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, top: 15, bottom: 15),
                                  child: Text(
                                    "История изменения цены за м²",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Center(
                                      child: Image.asset("asset/image/5.png")),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: InkWell(
                        onTap: () {
                          // Navigator.of(
                          //   context,
                          // ).push(MaterialPageRoute(
                          //     builder: (context) => HomeDetails(
                          //
                          //     )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
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
                                  padding: const EdgeInsets.only(
                                      left: 15, top: 15, bottom: 4),
                                  child: Text(
                                    "Rams City",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, bottom: 10),
                                  child: Text(
                                    "от 795 000 m за м²",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
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
                                            color: Color.fromRGBO(
                                                60, 164, 231, 1)),
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
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Container(
                                        width: 90,
                                        alignment: Alignment.center,
                                        height: 23,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              4.0,
                                            ),
                                            color: Color.fromRGBO(
                                                255, 221, 97, 1)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              "asset/icon/Home.svg",
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 6),
                                              child: Text(
                                                "Ипотека",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                          color:
                                              Color.fromRGBO(255, 221, 97, 1),
                                        ),
                                        child: Stack(children: [
                                          Image.asset("asset/image/2.png"),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  4.0,
                                                ),
                                                color: Color.fromRGBO(
                                                    22, 22, 22, 0.7),
                                              ),
                                              width: 66,
                                              height: 22,
                                              child: Center(
                                                  child: Text(
                                                "Строится",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1)),
                                              )),
                                            ),
                                          )
                                        ]))),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, top: 10, bottom: 10),
                                  child: Text(
                                    "Алматы, Медеуский р-н, ул. Жамакаева, 252",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Divider(
                                  color: Color.fromRGBO(227, 231, 238, 1),
                                  indent: 15,
                                  endIndent: 16,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          top: 17,
                                          bottom: 17,
                                          right: 10),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(48, 173, 110, 1),
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    Text(
                                      "24 квартиры",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 10, right: 20),
                                  child: Text(
                                    "1-комн. 41.2 м².........................................от 36 400 000 m",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 10, right: 20),
                                  child: Text(
                                      "2-комн. 68.3 м².........................................от 57 190 000 m"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 10, right: 20),
                                  child: Text(
                                      "3-комн. 91.6 м².........................................от 77 600 000 m"),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 15),
                                      child: Text(
                                        "Застройщик Рамс Казахстан",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color.fromRGBO(
                                                163, 171, 179, 1)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: 2,
                ))
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(246, 248, 252, 1),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 156,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(60, 164, 231, 1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(
                        4.0,
                      ),
                    ),
                    child: Center(
                        child: Text(
                      "Заказать звонок",
                      style: TextStyle(
                          color: Color.fromRGBO(60, 164, 231, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Container(
                      width: 156,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 221, 97, 1),
                        borderRadius: BorderRadius.circular(
                          4.0,
                        ),
                      ),
                      child: Center(
                          child: Text(
                        "Позвонить",
                        style: TextStyle(
                            color: Color.fromRGBO(22, 22, 22, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  info(String com, String info) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            com,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color.fromRGBO(163, 171, 179, 1)),
          ),
          Text(
            info,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          )
        ],
      ),
    );
  }

  withIcon(String icon, String com, String exap) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 25, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(icon),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  com,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(163, 171, 179, 1)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    exap,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(22, 22, 22, 1)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  withoutIcon(String com, String exap) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            com,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color.fromRGBO(163, 171, 179, 1)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              exap,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color.fromRGBO(22, 22, 22, 1)),
            ),
          )
        ],
      ),
    );
  }

  country(String country) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10, bottom: 20),
      child: Container(
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            4.0,
          ),
          color: Color.fromRGBO(246, 248, 252, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Text(
            country,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
