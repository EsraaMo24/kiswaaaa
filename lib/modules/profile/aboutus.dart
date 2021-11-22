import 'package:flutter/material.dart';
import 'package:kiswaa/modules/botomnavigationbar/profile/profile.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mywhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'About Us',
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
        padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultNormalText(
                'If you’re offered a seat on a rocket ship, don’t do that ask what seat! Just get on board and move do that the sail towards the destination. If you’re offered a seat on a rocket ship, don’t do that ask what seat! Just get on board and move do that the sail towards the destination.If you’re offered a seat on a rocket ship, don’t do that ask what seat! Just get on board and move do that the sail towards the destination. If you’re offered a seat on a rocket ship, don’t do that ask what seat! Just get on board and move do that the sail towards the destination.If you’re offered a seat on a rocket ship, don’t do that ask what seat! Just get on board and move do that the sail towards the destination. If you’re offered a seat on a rocket ship, don’t do that ask what seat! Just get on board and move do that the sail towards the destination.If you’re offered a seat on a rocket ship, don’t do that ask what seat! Just get on board and move do that the sail towards the destination. If you’re offered a seat on a rocket ship, don’t do that ask what seat! Just get on board and move do that the sail towards the destination.',
                14,
                MyColors.mygray1)
          ],
        ),
      ),
    ));
  }
}
