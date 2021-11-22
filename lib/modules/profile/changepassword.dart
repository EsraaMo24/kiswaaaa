import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/modules/profile/setting.dart';
import 'package:kiswaa/shared/colors.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  var _passwordController = TextEditingController();
  var newpasswordController = TextEditingController();
  var confirmnewpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.mywhite,
        appBar: AppBar(
          backgroundColor: MyColors.mywhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Change Passowrd',
            style: TextStyle(
                fontSize: 22,
                color: MyColors.myblack,
                fontWeight: FontWeight.bold),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Setting()));
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: MyColors.mypinck,
              size: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  _passwordController,
                  hint: 'Current Password',
                  obscure: true,
                  backgroundColor: MyColors.grayacent,
                  border: Border.all(color: MyColors.grayacent, width: 2.0),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  newpasswordController,
                  hint: 'New Password',
                  obscure: true,
                  backgroundColor: MyColors.grayacent,
                  border: Border.all(
                    color: MyColors.grayacent,
                    width: 2.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  confirmnewpasswordController,
                  hint: 'Confirm New Password',
                  obscure: true,
                  backgroundColor: MyColors.grayacent,
                  border: Border.all(color: MyColors.grayacent, width: 2.0),
                ),
                SizedBox(
                  height: 350,
                ),
                Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Setting()));
                      },
                      child: defaultButton('Confirm')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
