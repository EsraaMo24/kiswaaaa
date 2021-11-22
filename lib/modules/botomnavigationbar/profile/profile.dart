import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/modules/botomnavigationbar/profile/widget.dart';
import 'package:kiswaa/modules/loginscreen/splashscreen.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/modules/profile/aboutus.dart';
import 'package:kiswaa/modules/profile/favorites.dart';
import 'package:kiswaa/modules/profile/offers.dart';
import 'package:kiswaa/modules/profile/profilesetting.dart';
import 'package:kiswaa/modules/profile/setting.dart';
import 'package:kiswaa/modules/profile/termofuse.dart';
import 'package:kiswaa/shared/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 100,
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProfileSettings()));
                                    },
                                    child: defaultRow('Profile Setting',
                                        Icons.person, MyColors.myblack),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Offers()));
                                    },
                                    child: defaultRow(
                                        'Offers',
                                        Icons.local_offer_outlined,
                                        MyColors.myblack),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Favorites()));
                                    },
                                    child: defaultRow('Favorites',
                                        Icons.favorite, MyColors.myblack),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TermOfUse()));
                                    },
                                    child: defaultRow('Terms of use',
                                        Icons.menu, MyColors.myblack),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Setting()));
                                    },
                                    child: defaultRow('Settings',
                                        Icons.settings, MyColors.myblack),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => AboutUs()));
                                    },
                                    child: defaultRow(
                                        'About Us',
                                        Icons.comment_rounded,
                                        MyColors.myblack),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: defaultRow('Contact us', Icons.phone,
                                        MyColors.myblack),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Splashscreen()));
                                    },
                                    child: defaultRow(
                                        'Log out', Icons.logout, MyColors.red),
                                  ),
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
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .1,
            left: MediaQuery.of(context).size.width * .25,
            child: SingleChildScrollView(
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
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
