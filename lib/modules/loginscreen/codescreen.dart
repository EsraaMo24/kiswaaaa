import 'package:flutter/material.dart';
import 'package:kiswaa/modules/loginscreen/signupscreen.dart';
import 'package:kiswaa/modules/loginscreen/welcomescreen.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  _CodeScreenState createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 25, left: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultLoginImage(),
              SizedBox(
                height: 40,
              ),
              defaultBoldText('Hello,', 25),
              defaultNormalText(
                  'Please Inter The Code With 4 Digits That Sent To Your Phone Number',
                  16,
                  MyColors.mygray1),
              SizedBox(height: 40),
              defaultPinCode(context),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeSecreen()));
                    },
                    child: defaultPressText('Resend Code', MyColors.red2, 13)),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CodeScreen()));
                    },
                    child: defaultButton('Send Code')),
              ),
              SizedBox(
                height: 180,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignsUpScreen()));
                  },
                  child: defaultPressText(
                      'Create new account', MyColors.mypinck, 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
