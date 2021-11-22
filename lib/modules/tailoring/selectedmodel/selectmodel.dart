import 'package:flutter/material.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/modules/tailoring/tailoringhome/tailoringfavorites.dart';
import 'package:kiswaa/modules/tailoring/tailoringhome/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class SelectModel extends StatefulWidget {
  const SelectModel({Key? key}) : super(key: key);

  @override
  _SelectModelState createState() => _SelectModelState();
}

class _SelectModelState extends State<SelectModel> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: MyColors.mywhite,
            elevation: 0,
            centerTitle: true,
            title: defaultBoldText('Select Model', 22),
            leading: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Tailoringfavorites()));
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: MyColors.mypinck,
                size: 30,
              ),
            ),
            bottom: TabBar(tabs: [
              Tab(
                text: 'Men Thobe',
              ),
              Tab(
                text: 'Youth Thobe',
              ),
              Tab(
                text: 'Kids Thobe',
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: .75,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          crossAxisCount: 2,
                        ),
                        itemCount: MenThobepage.length,
                        itemBuilder: (BuildContext context, index) {
                          return defaultMenThobe(
                            context,
                            MenThobepage[index],
                          );
                        },
                      ),
                    ),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 250,
                      child: Image(
                          image: NetworkImage(
                              'https://as2.ftcdn.net/v2/jpg/02/74/01/81/1000_F_274018146_TmhL6C3X7non3beuZ8lgFTG4TTV9bhFv.jpg')),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    defaultNormalText('Requested products are not available',
                        18, MyColors.mygray1)
                  ],
                ),
              ),
              Center(child: defaultBoldText('Page not found', 22)),
            ],
          ),
        ),
      ),
    );
  }
}
