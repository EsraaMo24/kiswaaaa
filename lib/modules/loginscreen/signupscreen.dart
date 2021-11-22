import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';
import 'package:kiswaa/modules/loginscreen/welcomescreen.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

import 'loginscreen.dart';

class SignsUpScreen extends StatefulWidget {
  const SignsUpScreen({Key? key}) : super(key: key);

  @override
  _SignsUpScreenState createState() => _SignsUpScreenState();
}

class _SignsUpScreenState extends State<SignsUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultLoginImage(),
              SizedBox(
                height: 50,
              ),
              defaultBoldText(('Hello ,'), 25),
              defaultNormalText('Sign Up To Continue', 16, MyColors.mygray1),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                _nameController,
                hint: 'Name',
                password: false,
                backgroundColor: MyColors.grayacent,
                border: Border.all(color: MyColors.grayacent, width: 2.0),
              ),
              const SizedBox(
                height: 20,
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
                _phonenumberController,
                hint: 'Phone Number',
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
                height: 20,
              ),
              CustomTextField(
                _confirmpasswordController,
                hint: 'Password',
                obscure: true,
                backgroundColor: MyColors.grayacent,
                border: Border.all(color: MyColors.grayacent, width: 2.0),
              ),
              const SizedBox(
                height: 20,
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
                  child: defaultButton('Sign Up'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: defaultPressText(
                  'Or sign up with',
                  MyColors.whitegray,
                  17,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              defautRowLoginImage(),
              Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => loginscreen()));
                    },
                    child: defaultPressText(
                        'Already have an acount?Log In', MyColors.mypinck, 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
