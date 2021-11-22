import 'package:flutter/material.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelpocketpen.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelsideplain1.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class SelectMoselSidePocket extends StatefulWidget {
  const SelectMoselSidePocket({Key? key}) : super(key: key);

  @override
  _SelectMoselSidePocketState createState() => _SelectMoselSidePocketState();
}

class _SelectMoselSidePocketState extends State<SelectMoselSidePocket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mywhite,
        elevation: 0,
        centerTitle: true,
        title: defaultBoldText('Select Model', 22),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectModelPlain1(),
                ));
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
              defaultBoldText('Side Pocket', 20),
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
                  itemCount: sidePocketpage.length,
                  itemBuilder: (BuildContext context, int index) {
                    return defaultsidePocket(context, sidePocketpage[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
