import 'package:flutter/material.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelpocketpen.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelsleevs.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class SelectModelPlain1 extends StatefulWidget {
  const SelectModelPlain1({Key? key}) : super(key: key);

  @override
  _SelectModelPlain1State createState() => _SelectModelPlain1State();
}

class _SelectModelPlain1State extends State<SelectModelPlain1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.mywhite,
          elevation: 0,
          centerTitle: true,
          title: defaultBoldText('Select Model', 22),
          leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectModelSleevs()));
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: MyColors.mypinck,
              size: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                defaultBoldText('Plain', 20),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: .75,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                    ),
                    itemCount: plain2page.length,
                    itemBuilder: (BuildContext context, int index) {
                      return defaultplain2(context, plain2page[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
