import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodel.dart';
import 'package:kiswaa/modules/tailoring/tailoringhome/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class TailoringDetails extends StatefulWidget {
  const TailoringDetails({Key? key}) : super(key: key);

  @override
  _TailoringDetailsState createState() => _TailoringDetailsState();
}

class _TailoringDetailsState extends State<TailoringDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultTaioringDetailsiImage(context),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    defaultBoldText('About Zakhrafa', 18),
                    SizedBox(
                      height: 5,
                    ),
                    defaultNormalText(
                      'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industrys Standard Dummy Text Ever Since The 1500S, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book. It Has Survived Not Only Five Centuries, But Also The Leap Into Electronic Typesetting, Remaining Essentially Unchanged. It Was Popularised In The 1960S With The Release Of Letraset Sheets Containing Lorem Ipsum Passages, And More Recently With Desktop Publishing Software Like Aldus Pagemaker Including Versions Of Lorem Ipsum',
                      15,
                      MyColors.black59,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectModel(),
                            ),
                          );
                        },
                        child: Center(child: defaultButton('Select Model')))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
