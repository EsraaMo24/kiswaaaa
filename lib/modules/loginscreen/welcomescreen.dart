import 'package:flutter/material.dart';
import 'package:kiswaa/layout/home/home.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';

class WelcomeSecreen extends StatefulWidget {
  const WelcomeSecreen({Key? key}) : super(key: key);

  @override
  _WelcomeSecreenState createState() => _WelcomeSecreenState();
}

class _WelcomeSecreenState extends State<WelcomeSecreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Image(
                  image: AssetImage('assets/images/Completed.png'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: defaultButton('Welcome')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
