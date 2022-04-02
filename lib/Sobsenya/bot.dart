import 'package:flutter/material.dart';
class Bot extends StatefulWidget {
  const Bot({Key? key}) : super(key: key);

  @override
  _BotState createState() => _BotState();
}

class _BotState extends State<Bot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios,color: Colors.black,),
                Text("Бота",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),)
              ],
            ),
            Text("...",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 24,))
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(child: Text("1 апреля 2018",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(163, 171, 179, 1)),)),
          ),
          Container(
            margin: EdgeInsets.only(right: 70,left: 16,bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8)),
              color: Color.fromRGBO(246, 248, 252, 1)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 30,top: 15),
                  child: Text("Добрый день! С документами у вас все норме?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5),
                  child: Text("11:30",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(163, 171, 179, 1)),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 16,left: 65),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                color: Color.fromRGBO(60, 164, 231, 1)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 30,top: 15),
                  child: Text("Добрый день! С документами у вас все норме?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5,bottom: 5,),

                      child: Container(child: Text("11:30",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(246, 248, 252, 1)),)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: 40,
                      child: Stack(
                        children: [
                          Positioned(left:10,child: Icon(Icons.check,color: Colors.white,size: 20,)),
                          Icon(Icons.check,color: Colors.white,size: 20,)
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
