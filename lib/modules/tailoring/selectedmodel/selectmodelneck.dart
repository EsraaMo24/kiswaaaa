import 'package:flutter/material.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodel.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class SelectModelNeck extends StatefulWidget {
  const SelectModelNeck({Key? key}) : super(key: key);

  @override
  _SelectModelNeckState createState() => _SelectModelNeckState();
}

class _SelectModelNeckState extends State<SelectModelNeck> {
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
                  MaterialPageRoute(builder: (context) => SelectModel()));
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
                defaultBoldText('Neck', 20),
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
                    itemCount: Neckpage.length,
                    itemBuilder: (BuildContext context, index) {
                      return defaultNeck(
                        context,
                        Neckpage[index],
                      );
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
