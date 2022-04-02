import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List image = [
    "asset/image/2.png",
    "asset/image/2.png",
    "asset/image/2.png",
    "asset/image/2.png"
  ];
  int currentPos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromRGBO(22, 22, 22, 1),
                  size: 18,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              Text(
                "Объявление",
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(22, 22, 22, 1),
                    fontWeight: FontWeight.w500),
              ),
              SvgPicture.asset(
                'asset/icon/star.svg',
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 150,
            child: ListView(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  CarouselSlider.builder(
                                    itemCount: image.length,
                                    itemBuilder: (BuildContext context,
                                            int itemIndex, int pageViewIndex) =>
                                        InkWell(
                                            onTap: () {
                                              // Navigator.of(context).push(
                                              //     MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             BannerProductAll(
                                              //               pro:
                                              //               Banner.data![itemIndex],
                                              //             )));
                                            },
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                  image[itemIndex],
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 260,
                                                  fit: BoxFit.cover,
                                                ),
                                                Positioned(
                                                  right: 16,
                                                  bottom: 16,
                                                  child: Container(
                                                      width: 30,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(22, 22, 22, 0.54),
                                                        borderRadius: BorderRadius.circular(2)
                                                      ),
                                                      child: Center(child: Text("${itemIndex+1}/${image.length}",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.white),))),
                                                )
                                              ],
                                            )
                                            // CachedNetworkImage(
                                            //   imageUrl: "http://185.128.213.46:5001/" +
                                            //       Banner
                                            //           .data![
                                            //       itemIndex]
                                            //           .bannerImage,
                                            //   placeholder: (context,
                                            //       url) =>
                                            //       Container(
                                            //           alignment:
                                            //           Alignment
                                            //               .center,
                                            //           child:
                                            //           CircularProgressIndicator(
                                            //             color: Colors
                                            //                 .red,
                                            //           )),
                                            //   errorWidget: (context,
                                            //       url,
                                            //       error) =>
                                            //       Image.asset(
                                            //           "assets/images/1.jpg"),
                                            //   fit: BoxFit.cover,
                                            // ),
                                            ),
                                    options: CarouselOptions(
                                      viewportFraction: 1,
                                      height: 200,
                                      aspectRatio: 16 / 9,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          currentPos = index;
                                        });
                                      },
                                      initialPage: 0,
                                      enableInfiniteScroll: true,
                                      reverse: false,
                                      autoPlay: false,
                                      autoPlayInterval: Duration(seconds: 10),
                                      autoPlayAnimationDuration:
                                          Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enlargeCenterPage: true,
                                      scrollDirection: Axis.horizontal,
                                    ),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment:
                                  //   MainAxisAlignment.center,
                                  //   children: Banner.data!.map((url) {
                                  //     int index =
                                  //     Banner.data!.indexOf(url);
                                  //     return Container(
                                  //       width: 8.0,
                                  //       height: 8.0,
                                  //       margin: EdgeInsets.symmetric(
                                  //           vertical: 10.0,
                                  //           horizontal: 3.0),
                                  //       decoration: BoxDecoration(
                                  //         shape: BoxShape.circle,
                                  //         color: currentPos == index
                                  //             ? Color.fromRGBO(
                                  //             0, 0, 0, 0.9)
                                  //             : Color.fromRGBO(
                                  //             0, 0, 0, 0.4),
                                  //       ),
                                  //     );
                                  //   }).toList(),
                                  // ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 17, bottom: 15),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: SvgPicture.asset(
                                        "asset/icon/Money.svg",
                                      ),
                                    ),
                                    Text(
                                      "3 500 000 000 TMT",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(22, 22, 22, 1)),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset(
                                "asset/image/3.png",
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, bottom: 25, left: 18),
                                child: Row(
                                  children: [
                                    InkWell(
                                    // onTap: (){
                                    //     Navigator.of(
                                    //       context,
                                    //     ).push(MaterialPageRoute(builder: (context) => Yandex_Map()));
                                    //   },
                                      child: Container(
                                          padding: EdgeInsets.only(right: 13),
                                          alignment: Alignment.bottomLeft,
                                          child: SvgPicture.asset(
                                              "asset/icon/location.svg")),
                                    ),
                                    Expanded(
                                        child: Text(
                                      "Улица 10 Йыл абаданчылык Парахат 2/2 Дом 18 Квартира 18",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(bottom: 5),
                      //   child: Container(
                      //     color: Colors.white,
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Row(
                      //           children: [
                      //             Padding(
                      //               padding: EdgeInsets.only(
                      //                   top: 10,
                      //                   left: 16,
                      //                   bottom: 10,
                      //                   right: 5),
                      //               child: Container(
                      //                 width: 35,
                      //                 height: 35,
                      //                 decoration: BoxDecoration(
                      //                   shape: BoxShape.circle,
                      //                   image: DecorationImage(
                      //                       image:
                      //                           AssetImage("asset/image/2.png"),
                      //                       fit: BoxFit.fill),
                      //                 ),
                      //               ),
                      //             ),
                      //             Column(
                      //               mainAxisAlignment: MainAxisAlignment.start,
                      //               crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //               children: [
                      //                 Text(
                      //                   "ЖК “ Степной”",
                      //                   style: TextStyle(
                      //                       fontSize: 14,
                      //                       fontWeight: FontWeight.w500,
                      //                       color: Color.fromRGBO(
                      //                           60, 164, 231, 1)),
                      //                 ),
                      //                 Padding(
                      //                   padding: const EdgeInsets.only(top: 3),
                      //                   child: Text("Альянсстройинвест",
                      //                       style: TextStyle(
                      //                           fontWeight: FontWeight.w400,
                      //                           fontSize: 13,
                      //                           color: Color.fromRGBO(
                      //                               163, 171, 179, 1))),
                      //                 ),
                      //               ],
                      //             ),
                      //           ],
                      //         ),
                      //         Padding(
                      //             padding: const EdgeInsets.only(right: 40),
                      //             child: Text(
                      //               "Перейти в ЖК",
                      //               style: TextStyle(
                      //                 fontSize: 14,
                      //                 fontWeight: FontWeight.w500,
                      //                 color: Color.fromRGBO(60, 164, 231, 1),
                      //               ),
                      //             ))
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 10),
                                  child: Center(
                                      child: Text(
                                    "Основные параметры",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(22, 22, 22, 1)),
                                  )),
                                ),
                                parametr("Количество комнат", "2"),
                                parametr(
                                    "Период Аренды", "На длителтельный срок"),
                                parametr("Номер дома ", "13/1"),
                                parametr("Тип сторения", "кирпичный"),
                                parametr(
                                    "Период Аренды", "На длителтельный срок"),
                                parametr("Год постройки ( сдачи в эксплутацию)",
                                    "2010"),
                                parametr("Этаж", "2"),
                                parametr("Количество этажей", "12"),
                                parametr("Разное",
                                    "неугловая, комнаты изолированны, с счетчики тихик двор"),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 10),
                                child: Text(
                                  "Описание",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 17, right: 16, bottom: 15),
                                child: Container(
                                    child: Text(
                                  'Пластиковые окна, веранда.\nОдна часть двухквартирного дома, двухэтажный с мансардой, дом очень теплый, рядом находится новая школа и детский сад. дорога асфальтирована. вода проведена. печька - длительного горения. теплый пол. дом продается частично с мебелью. (прихожка, кухня со встроенной плиткой и духовкой "Электролюкс", спальня, детская комната, люстры) документы в порядке. торг. уместен',
                                  style: TextStyle(
                                      fontSize: 14,
                                      wordSpacing: 1,
                                      letterSpacing: 0.2),
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 10),
                                child: Center(
                                    child: Text(
                                  "Цены в похоших объявлениях",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                              Row(
                                children: [
                                  price("541,474 TMT",
                                      "Цена м2 в этом объявлении"),
                                  price("457,380 TMT",
                                      "Похожие квартиры в мкр №8"),
                                  price("457,380 TMT",
                                      "Похожие квартиры в Aшгабат"),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 10, bottom: 10),
                                child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        children: [
                                      TextSpan(
                                          text: "На 17.9%",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  60, 164, 231, 1))),
                                      TextSpan(
                                          text: " дороже, чем в других",
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                          text: " похожих предложениях",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  60, 164, 231, 1))),
                                      TextSpan(
                                          text: " в этом районе.",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ])),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, bottom: 5),
                                child: Text(
                                  "Ознакомительный анализ может не сопвадать с дейтвыющими рычночными ценами.",
                                  style: TextStyle(
                                      color: Color.fromRGBO(163, 171, 179, 1)),
                                ),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.only(
                              //       left: 16, right: 16, bottom: 10),
                              //   child: Text(
                              //       "https://meet.google.com/snb-seps-fvt"),
                              // )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, top: 15, bottom: 5),
                                        child: Text(
                                          "Автор объявнления",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromRGBO(
                                                  163, 171, 179, 1)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: Text(
                                          "Любимый Город",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 16,
                                        bottom: 10,
                                        right: 19,
                                        top: 18),
                                    child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image:
                                                AssetImage("asset/image/2.png"),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, left: 16, bottom: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2)),
                                        color: Color.fromRGBO(255, 221, 97, 1),
                                      ),
                                      child: SvgPicture.asset(
                                        "asset/icon/user-tag.svg",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Рукоодитель компании подтвердил личьность документами",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 16),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 221, 97, 0.38),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        255, 221, 97, 1),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: SvgPicture.asset(
                                                      "asset/icon/note-2.svg"),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Скачать договор аренды",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 22, top: 23),
                                      child:
                                          Icon(Icons.arrow_forward_ios_rounded),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 56, right: 16, top: 14, bottom: 15),
                                  child: Text(
                                    "Универсальный документ от Крисча.тм зщищающий права всех участиков сделки",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 16),
                                child: Text(
                                  "ID 64326825",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(163, 171, 179, 1)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  children: [
                                    productSet('asset/icon/calendar.svg',
                                        "17 Октября 2021"),
                                    Divider(
                                      color: Color.fromRGBO(227, 231, 238, 1),
                                      indent: 16,
                                      endIndent: 16,
                                    ),
                                    productSet(
                                        'asset/icon/eye2.svg', "5 Просмотров")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 16, bottom: 16),
                                child: Text(
                                  "Ускорить продажу",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              baha("Продлить на неделю за 120 ТМТ", "true"),
                              Divider(
                                color: Color.fromRGBO(227, 231, 238, 1),
                                indent: 16,
                                endIndent: 16,
                              ),
                              baha("Отправить в ТОП за 390 ТМТ",
                                  "24 часа выше бесплатных объявлений"),
                              Divider(
                                color: Color.fromRGBO(227, 231, 238, 1),
                                indent: 16,
                                endIndent: 16,
                              ),
                              baha("Отправить в Горячие за 300 ТМТ",
                                  "24 часа в горячих предложениях"),
                              Divider(
                                color: Color.fromRGBO(227, 231, 238, 1),
                                indent: 16,
                                endIndent: 16,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: baha(
                                    "Отправить в Горячие за 300 ТМТ", 'true'),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Image.asset("asset/image/2.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Посмтотретю объявление на сайте",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Icon(Icons.arrow_forward_ios_rounded),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Пожаловаться на объвление",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(211, 51, 103, 1)),
                                ),
                                Icon(Icons.arrow_forward_ios_rounded),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 10),
                  child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(60, 164, 231, 1),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Text(
                        "Написать",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 10),
                  child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(48, 173, 110, 1),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Text(
                        "Позвонить",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  baha(String sell, String time) {
    return Padding(
      padding: const EdgeInsets.only(left: 46, bottom: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sell,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          time != 'true'
              ? Text(
                  time,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(163, 171, 179, 1)),
                )
              : Container()
        ],
      ),
    );
  }

  price(String price, String com) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(227, 231, 238, 1))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 15, right: 15, bottom: 5),
              child: Text(
                price,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: Text(
                com,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13, color: Color.fromRGBO(163, 171, 179, 1)),
              ),
            )
          ],
        ),
      ),
    );
  }

  productSet(String imgPath, String com) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11, top: 11),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: SvgPicture.asset(
              imgPath,
            ),
          ),
          Text(
            com,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  parametr(String komand, String val) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                padding:
                    EdgeInsets.only(left: 16, top: 10, bottom: 10, right: 70),
                child: Text(
                  komand,
                  style: TextStyle(
                      fontSize: 14, color: Color.fromRGBO(163, 171, 179, 1)),
                )),
            Expanded(
                child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(right: 16),
                    child: Text(
                      val,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ))),
          ],
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
