import 'package:flutter/material.dart';
import 'package:kiswaa/modules/botomnavigationbar/profile/profile.dart';
import 'package:kiswaa/modules/botomnavigationbar/profile/widget.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mypinck,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: MyColors.mywhite,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: MyColors.mypinck,
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .2),
              decoration: BoxDecoration(
                  color: MyColors.mywhite,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 100,
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                children: [
                                  defaultTextFormField2(
                                    label: 'User Name',
                                    suffix: Icons.person,
                                    emailcontroller: nameController,
                                    emailAddress: TextInputType.name,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  defaultTextFormField2(
                                    label: 'Phone Number',
                                    suffix: Icons.phone,
                                    emailcontroller: phoneController,
                                    emailAddress: TextInputType.phone,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  defaultTextFormField2(
                                      label: 'Email',
                                      suffix: Icons.email,
                                      emailcontroller: emailController,
                                      emailAddress: TextInputType.emailAddress),
                                  SizedBox(
                                    height: 230,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Profile()));
                                      },
                                      child: defaultButton('Save'))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .1,
              left: MediaQuery.of(context).size.width * .25,
              child: Column(
                children: [
                  defaltprofileImage(),
                  SizedBox(
                    height: 5,
                  ),
                  defaultBoldText('Alyaa Ahmed', 18),
                  SizedBox(
                    height: 5,
                  ),
                  defaultNormalText(
                      'alyaaahmed971@gmail.com', 15, MyColors.mygray1),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
