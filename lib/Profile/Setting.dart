import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tmbaza/Priglozenya/Priglozenya.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _switchValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 252, 1),
      appBar:AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Настройки",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
            SvgPicture.asset("asset/icon/login_black.svg")
          ],
        ),
      ) ,
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(16, 20, 20, 20),
                  width: 50,height: 50,

                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    color: Color.fromRGBO(196, 196, 196, 1),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Марьям",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    Text("Хозяин",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 15),
            color: Colors.white,
            child: Column(
              children: [
               select("Сменить пароль"),
                Divider(
                  indent: 16,endIndent: 16,
                ),
                select("Подтверждения номера"),
                Divider(
                  indent: 16,endIndent: 16,
                ),
                select("История платежей")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,bottom: 5),
            child: Text("Рассылка и увадомления",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),),
          ),
          Container(margin: EdgeInsets.only(bottom: 15),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 16,right: 15,top: 15,bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Операции с объявлениями",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                      Text("Уведомления включены",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)
                    ],
                  ),
                  CupertinoSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Операции с объявлениями",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  Row(

                    children: [
                      Text("Русский",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(163, 171, 179, 1)),),
                      Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(163, 171, 179, 1),size: 18,)
                    ],
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Priglozenya()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 15),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
margin: EdgeInsets.only(right: 10),
                      width: 16,height: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(196, 196, 196, 1)
                      ),
                    ),
                    Text("О приложении")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );

  }
  select(String name){
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 15, 16, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
              Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(60, 164, 231, 1),)
            ],
          ),
        ),

      ],
    );

  }
}
