import 'package:flutter/material.dart';
import 'package:kiswaa/modules/loginscreen/splashscreen.dart';
import 'package:kiswaa/modules/tailoring/tailoringmen.dart';

import 'modules/botomnavigationbar/cart/cart.dart';
import 'modules/loginscreen/codescreen.dart';
import 'modules/tailoring/selectedmodel/selectmodel.dart';
import 'modules/tailoring/selectedmodel/selectmodelbottom.dart';
import 'modules/tailoring/selectedmodel/selectmodelbutton.dart';
import 'modules/tailoring/selectedmodel/selectmodelgypsor.dart';
import 'modules/tailoring/selectedmodel/selectmodelneck.dart';
import 'modules/tailoring/selectedmodel/selectmodelgysperpoket.dart';
import 'modules/tailoring/selectedmodel/selectmodelplain.dart';
import 'modules/tailoring/selectedmodel/selectmodelpocketpen.dart';
import 'modules/tailoring/selectedmodel/selectmodelsideplain1.dart';
import 'modules/tailoring/tailoringhome/tailoringdatails.dart';
import 'modules/tailoring/tailoringhome/tailoringdetailsmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SelectModelNeck(),
    );
  }
}
