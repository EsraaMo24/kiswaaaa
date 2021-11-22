import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/shared/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:easy_localization/easy_localization.dart';

Widget defaultLoginImage() {
  return Center(
    child: Container(
      width: 100,
      height: 110,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/login.png'),
      )),
    ),
  );
}

Widget defaultBoldText(String text, double size) {
  return Container(
    child: Text(
      text.tr(),
      style: TextStyle(
          color: MyColors.myblack, fontSize: size, fontWeight: FontWeight.bold),
    ),
  );
}

Widget defaultNormalText(String text, double size, Color bacground) {
  return Container(
    child: Text(
      text,
      style: TextStyle(
        color: bacground,
        fontSize: size,
      ),
    ),
  );
}

Widget defaultPressText(
  String text,
  Color background,
  double size,
) {
  return Text(
    text,
    style: TextStyle(
      decoration: TextDecoration.underline,
      color: background,
      fontSize: size,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget defaultButton(String text) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: MyColors.mypinckaccent,
    ),
    width: 200,
    height: 40,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget defautRowLoginImage() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
          width: 120,
          height: 50,
          child: Image.asset('assets/images/google.png')),
      Container(
          width: 120,
          height: 50,
          child: Image.asset('assets/images/facebook.png')),
    ],
  );
}

Widget defaultPinCode(context) {
  return Center(
    child: Container(
      width: 220,
      child: PinCodeTextField(
        appContext: context,
        autoFocus: true,
        keyboardType: TextInputType.number,
        cursorColor: MyColors.mypinckaccent,
        length: 4,
        obscureText: false,
        animationType: AnimationType.scale,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10),
          fieldHeight: 45,
          fieldWidth: 45,
          borderWidth: 1,
          activeColor: MyColors.mypinck,
          inactiveColor: MyColors.grayy,
          inactiveFillColor: Colors.white,
          activeFillColor: MyColors.whitegray,
          selectedColor: MyColors.grayy,
          selectedFillColor: Colors.white,
        ),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.white,
        enableActiveFill: true,
        onCompleted: (code) {
          //otpCode=code;
          print("Completed");
        },
        onChanged: (value) {
          print(value);
        },
      ),
    ),
  );
}
