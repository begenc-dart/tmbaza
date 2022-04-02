import 'package:flutter/material.dart';
class Yandex_Map extends StatefulWidget {
  const Yandex_Map({Key? key}) : super(key: key);

  @override
  _Yandex_MapState createState() => _Yandex_MapState();
}

class _Yandex_MapState extends State<Yandex_Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Yandex_Map())
        ],
      ),
    );
  }
}
