import 'package:flutter/material.dart';

class Soglasenya extends StatefulWidget {
  const Soglasenya({Key? key}) : super(key: key);

  @override
  _SoglasenyaState createState() => _SoglasenyaState();
}

class _SoglasenyaState extends State<Soglasenya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Пользовательское соглашения",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 15),
            child: Text(
              "Пользовотелское соглашение Krisha.Tm",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tellus sed quis duis sit id vel ut. Est nullam viverra nibh eu sed enim viverra erat amet. Lobortis phasellus tellus suscipit consequat odio. Pellentesque ultricies odio tristique elit est aliquam est. Potenti leo magna volutpat nunc. Risus ornare ac tellus, id quis. Duis interdum ipsum, gravida odio malesuada orci elit id. Consequat massa convallis tempor ornare ut sed pretium tincidunt dignissim. Integer est elementum purus fringilla lectus vestibulum morbi non. Gravida aliquam risus aenean sit. Eleifend ultrices dui lectus cras. Elementum morbi proin dui varius. Velit sagittis amet sit nec pharetra tincidunt. Pharetra iaculis praesent tristique adipiscing tellus cursus.
Urna, lectus pellentesque luctus convallis. Magna ipsum cras tristique vitae id orci, sociis. Ipsum lectus nulla tortor morbi facilisis orci posuere. Ut molestie montes, libero, et dignissim. Donec libero duis donec facilisi morbi eget quis. Consectetur facilisis et et venenatis pellentesque at. Vulputate ullamcorper molestie id in amet et quis.""",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
