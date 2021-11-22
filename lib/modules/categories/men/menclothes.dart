import 'package:flutter/material.dart';
import 'package:kiswaa/modules/botomnavigationbar/homeclothes/homeclothes.dart';
import 'package:kiswaa/modules/botomnavigationbar/homeclothes/widget.dart';
import 'package:kiswaa/modules/categories/men/widget.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class MenClothes extends StatefulWidget {
  const MenClothes({Key? key}) : super(key: key);

  @override
  _MenClothesState createState() => _MenClothesState();
}

class _MenClothesState extends State<MenClothes> {
  SingingCharacter? _character = SingingCharacter.toprated;

  bool value = false;
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mywhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Men',
          style: TextStyle(
              fontSize: 22,
              color: MyColors.myblack,
              fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeClothes()));
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: MyColors.mypinck,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultSearchRow(context),
              SizedBox(height: 15),
              defaultBoldText(
                'Categories',
                20,
              ),
              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return defaultStackCategoriesMen(
                          context, categoryMenpage[index]);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: categoryMenpage.length),
              ),
              SizedBox(height: 15),
              defaultBoldText(
                'You May Like',
                20,
              ),
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
                      return defaultStakYouMayLike(
                          context, YouMayLikepage[index]);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: YouMayLikepage.length),
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
