import 'package:flutter/material.dart';
import 'package:kiswaa/modules/botomnavigationbar/profile/profile.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class TermOfUse extends StatefulWidget {
  const TermOfUse({Key? key}) : super(key: key);

  @override
  _TermOfUseState createState() => _TermOfUseState();
}

class _TermOfUseState extends State<TermOfUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.mywhite,
        appBar: AppBar(
          backgroundColor: MyColors.mywhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Terms Of Use',
            style: TextStyle(
                fontSize: 22,
                color: MyColors.myblack,
                fontWeight: FontWeight.bold),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: MyColors.mypinck,
              size: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultBoldText('Terms & Conditions', 18),
              SizedBox(
                height: 5,
              ),
              defaultNormalText(
                  'If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination. If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination.',
                  14,
                  MyColors.mygray1),
              SizedBox(
                height: 10,
              ),
              defaultBoldText('Terms & Conditions', 18),
              SizedBox(
                height: 5,
              ),
              defaultNormalText(
                  'If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination. If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination.',
                  14,
                  MyColors.mygray1),
              SizedBox(
                height: 10,
              ),
              defaultBoldText('Terms & Conditions', 18),
              SizedBox(
                height: 5,
              ),
              defaultNormalText(
                  'If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination. If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination.',
                  14,
                  MyColors.mygray1),
              SizedBox(
                height: 10,
              ),
              defaultBoldText('Terms & Conditions', 18),
              SizedBox(
                height: 5,
              ),
              defaultNormalText(
                  'If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination. If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination.',
                  14,
                  MyColors.mygray1),
            ],
          ),
        ));
  }
}
