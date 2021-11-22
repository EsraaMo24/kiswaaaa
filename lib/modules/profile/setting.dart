import 'package:flutter/material.dart';
import 'package:kiswaa/modules/botomnavigationbar/profile/profile.dart';
import 'package:kiswaa/modules/loginscreen/splashscreen.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

import 'changepassword.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PopupMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                  groupValue: 1,
                  onChanged: (i) {},
                  value: 1,
                ),
                Text("English"),
              ],
            ),
          ),
          PopupMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Radio(
                  groupValue: 1,
                  onChanged: (i) {},
                  value: 1,
                ),
                Text("Arabic"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mywhite,
      appBar: AppBar(
        backgroundColor: MyColors.mywhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Setting',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                defaultBoldText('Change Password', 18),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangePassword()));
                    },
                    child: Icon(Icons.arrow_forward_ios))
              ],
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
                child: defaultBoldText('App Language', 18)),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Splashscreen()));
              },
              child: Text(
                'Log out',
                style: TextStyle(color: MyColors.red, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
