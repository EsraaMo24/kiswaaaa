import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/modules/botomnavigationbar/homeclothes/homeclothes.dart';
import 'package:kiswaa/modules/categories/alrajulalmotmiz/alrajulalmotmiz.dart';
import 'package:kiswaa/modules/categories/menwear/widget.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class MenWear extends StatefulWidget {
  const MenWear({Key? key}) : super(key: key);

  @override
  _MenWearState createState() => _MenWearState();
}

class _MenWearState extends State<MenWear> {
  SingingCharacter? _character = SingingCharacter.toprated;

  bool value = false;
  void btnsheet(BuildContext ctx) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      elevation: 10,
      context: ctx,
      builder: (ctx) => Container(
        decoration: BoxDecoration(
            color: MyColors.gray50,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25))),
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
      ),
    );
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
          title: defaultBoldText('Men Wear', 22),
          leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlrajulAlmotmiz()));
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
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultSearchRow(context),
              SizedBox(height: 15),
              Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .62,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return defaultMenWeargridview(context, MenWearpage[index]);
                  },
                  itemCount: MenWearpage.length,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
