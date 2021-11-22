import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';
import 'package:kiswaa/modules/loginscreen/signupscreen.dart';
import 'package:kiswaa/modules/loginscreen/welcomescreen.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

import 'codescreen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            defaultLoginImage(),
            SizedBox(
              height: 50,
            ),
            defaultBoldText(('Hello Back,'), 25),
            defaultNormalText('Sign In To Continue', 16, MyColors.mygray1),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              _emailController,
              hint: 'Email',
              password: false,
              backgroundColor: MyColors.grayacent,
              border: Border.all(color: MyColors.grayacent, width: 2.0),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              _passwordController,
              hint: 'Password',
              obscure: true,
              backgroundColor: MyColors.grayacent,
              border: Border.all(color: MyColors.grayacent, width: 2.0),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CodeScreen(),
                    ),
                  );
                },
                child: defaultPressText(
                  'Forget Password?',
                  MyColors.mypinck,
                  15,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeSecreen(),
                    ),
                  );
                },
                child: defaultButton('Login'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: defaultPressText(
                  'Or login With',
                  MyColors.whitegray,
                  17,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            defautRowLoginImage(),
            SizedBox(
              height: 25,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignsUpScreen()));
                },
                child: defaultPressText(
                  'Create New Acount',
                  MyColors.mypinck,
                  18,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
