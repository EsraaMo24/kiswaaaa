import 'package:flutter/material.dart';
import 'package:kiswaa/modules/botomnavigationbar/homeclothes/homeclothes.dart';
import 'package:kiswaa/modules/botomnavigationbar/homeclothes/widget.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/modules/tailoring/tailoringhome/tailoringdatails.dart';
import 'package:kiswaa/modules/tailoring/tailoringhome/tailoringdetailsmodel.dart';
import 'package:kiswaa/shared/colors.dart';

class TailoringMen extends StatefulWidget {
  const TailoringMen({Key? key}) : super(key: key);

  @override
  _TailoringMenState createState() => _TailoringMenState();
}

class _TailoringMenState extends State<TailoringMen> {
  SingingCharacter? _character = SingingCharacter.toprated;

  void btnsheet(BuildContext ctx) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 10,
        context: ctx,
        builder: (ctx) => Container(
              decoration: BoxDecoration(
                  color: MyColors.gray50,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              height: 220,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: defaultBoldText('Filter', 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: const Text('Top rated'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.toprated,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('New Offers '),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.newoffer,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  Center(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: MyColors.mypinckaccent,
                    ),
                    width: 180,
                    height: 35,
                    child: Center(
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ));
  }

  Widget defaultSearchRow(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 260,
          height: 35,
          child: TextFormField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              fillColor: MyColors.grayyy,
              contentPadding: EdgeInsets.only(
                top: 10,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: MyColors.grayyy)),
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: MyColors.mygray1,
                size: 20,
              ),
              hintText: 'Search',
            ),
          ),
        ),
        InkWell(
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/checkbox.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          onTap: () {
            return btnsheet(context);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.mywhite,
          elevation: 0,
          centerTitle: true,
          title: defaultBoldText('Tailoring', 22),
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeClothes(),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: MyColors.mypinck,
              size: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultSearchRow(context),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (TailoringDetailsmodel()),
                        ),
                      );
                    },
                    child: Container(
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://img.freepik.com/free-psd/woman-holding-leafy-white-pillow-mockup_53876-115776.jpg?size=338&ext=jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    width: 350,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Separate your dress by yourself',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              defaultBoldText('Offers', 20),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                height: 210,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return defaultstackOfferss(context, offerpage[index]);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: offerpage.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
