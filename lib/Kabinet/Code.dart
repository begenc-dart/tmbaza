import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import 'Input_name.dart';

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  _CodeState createState() => _CodeState();
}

class _CodeState extends State<Code> {
  bool _onEditing = true;
  String? _code;
  @override
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  late StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 221, 97, 1),
        centerTitle: true,
        leading: Container(child: SvgPicture.asset("asset/icon/close-circle.svg",width: 25,height: 25,fit: BoxFit.scaleDown,)),
        title: Text("Лично кабинет",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25,bottom: 25),
              child: SvgPicture.asset('asset/icon/Krisha.tm.svg'),
            ),
            Form(
              key: formKey,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 30),
                  child: PinCodeTextField(
                    appContext: context,

                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 5,
                    obscureText: false,
                    obscuringCharacter: '*',
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 60,
                      fieldWidth: 50,
                      selectedColor: Color.fromRGBO(255, 221, 97, 1),
                      activeColor: Color.fromRGBO(227, 231, 238, 1),
                      inactiveColor: Color.fromRGBO(227, 231, 238, 1),
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      activeFillColor: Colors.white,
                    ),
                    cursorColor: Colors.black,
                    animationDuration: Duration(milliseconds: 300),
                    textStyle: TextStyle(fontSize: 20, height: 1.6),

                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                    boxShadows: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      print("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 25,bottom: 20),
              child: InkWell(
                onTap: (){
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Input_Name()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.08),
                          spreadRadius: 0,
                          blurRadius: 30,
                          offset: Offset(0, 15), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: Color.fromRGBO(60, 164, 231, 1)),
                  child: Center(
                      child: Text(
                        "Продолжить",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      )),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
