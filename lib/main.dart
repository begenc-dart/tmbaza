
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'Kabinet/Kabinet.dart';

import 'Like/Like.dart';
import 'NewHomeDetal/HomeDetails.dart';
import 'Online/online.dart';
import 'Profile/Login_Profile.dart';
import 'Setting/Setting.dart';
import 'Sobsenya/Sobsenya.dart';
import 'mainPage/MainPagee.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(

    ),
    debugShowCheckedModeBanner: false,
    home: Bottom(),
  ));
}

class Bottom extends StatefulWidget {


  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int sec = 0;
List<Widget> pages=[];

  @override
  void initState() {
    MyApp myApp=MyApp();
    Izbrazenya _izbrazenya=Izbrazenya();
    Online online=Online();
    HomeDetails homeDetails=HomeDetails();
    Sobsenya sobsenya=Sobsenya();
    Kabinet kabinet=Kabinet();
    Profile profile=Profile();
    pages=[myApp,_izbrazenya,online,sobsenya,kabinet];
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[sec],
      bottomNavigationBar: Theme(
        data: ThemeData(
            canvasColor: Color.fromRGBO(255, 255, 255, 1),

          
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/NavBar/Home.svg"),
                activeIcon:SvgPicture.asset("asset/NavBar/home-2.svg"),
                title: Text("Главный")),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/NavBar/star.svg"),
                activeIcon:SvgPicture.asset("asset/NavBar/star2.svg"),
                title: Text("Избранное")),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/NavBar/add-square.svg"),
                activeIcon:SvgPicture.asset("asset/NavBar/add-square2.svg"),
                title: Text("Подать")),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/NavBar/message-text.svg"),
                activeIcon:SvgPicture.asset("asset/NavBar/message-text2.svg"),
                title: Text("Сообщения")),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/NavBar/profile-circle.svg"),
                title: Text("Кабинет")),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: sec,
          fixedColor: Color.fromRGBO(22, 22, 22, 1),
          onTap: (index){
            setState(() {
              sec=index;
            });

          },
        ),
      ),
    );
  }
}
