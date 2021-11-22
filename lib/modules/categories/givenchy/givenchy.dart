import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/modules/botomnavigationbar/homeclothes/homeclothes.dart';
import 'package:kiswaa/modules/categories/givenchy/widget.dart';
import 'package:kiswaa/modules/categories/shmagh/shmagh.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class Givenchy extends StatefulWidget {
  const Givenchy({Key? key}) : super(key: key);

  @override
  _GivenchyState createState() => _GivenchyState();
}

class _GivenchyState extends State<Givenchy> {
  void _showToast() {
    Fluttertoast.showToast(
      msg: "item added to cart",
      backgroundColor: MyColors.gray20,
      textColor: MyColors.mypinck,
      fontSize: 17,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 7,
    );
  }

  int counter = 1;

  List<String> Sizes = ['52', '54', '56', '58', '60', '62'];
  int selectedindex = 0;
  onselected(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  void _showbtnsheet(BuildContext ctx) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 10,
      context: ctx,
      builder: (ctx) => Container(
        decoration: BoxDecoration(
            color: MyColors.white20,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35), topLeft: Radius.circular(35))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://as2.ftcdn.net/v2/jpg/04/04/83/51/1000_F_404835173_SOZLSPJLJD2s4hWvVzTdWjn8R6tQDNhW.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  defaultBoldsalarytext('\$20', 23, MyColors.mypinck),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              defaultBoldText('Cout', 25),
              SizedBox(
                height: 7,
              ),
              Container(
                child: RatingBar.builder(
                    itemSize: 14,
                    minRating: 1,
                    itemBuilder: (BuildContext context, _) {
                      return Icon(
                        Icons.star,
                        color: Colors.yellow,
                      );
                    },
                    onRatingUpdate: (rating) {}),
              ),
              SizedBox(
                height: 20,
              ),
              defaultBoldText('Size', 20),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 25,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: () {
                          onselected(index);
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: selectedindex == index
                                  ? MyColors.whitegray
                                  : MyColors.mypinck),
                          child: Center(
                            child: Text(Sizes[index]),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, index) {
                      return SizedBox(width: 5);
                    },
                    itemCount: Sizes.length),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        _showToast();
                      },
                      child: defaultButton('Add to Cart')),
                  // محتاجه هنا احط كونتينر
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              setState((() {
                                counter--;
                                print(counter);
                              }));
                            },
                            child: Center(
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: MyColors.myblack,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '$counter',
                          style: TextStyle(
                            color: MyColors.mypinck,
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                                print(counter);
                              });
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: MyColors.myblack,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

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

  Widget defaultstackgridview(context, Givenchyclass model) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 180,
        width: 150,
        child: Stack(
          children: [
            InkWell(
              child: Container(
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(model.image),
                  ),
                ),
              ),
              onTap: () => _showbtnsheet(context),
            ),
            Positioned(
              top: 15,
              right: 5,
              child: (CircleAvatar(
                backgroundColor: MyColors.mywhite,
                radius: 12,
                child: FavoriteButton(
                  iconSize: 18,
                  isFavorite: true,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
              )),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        width: 150,
        height: 30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    model.title,
                    style: TextStyle(fontSize: 14, color: MyColors.myblack),
                  ),
                ),
                Container(
                  child: RatingBar.builder(
                      itemSize: 10,
                      minRating: 1,
                      itemBuilder: (BuildContext context, _) {
                        return Icon(
                          Icons.star,
                          color: Colors.yellow,
                        );
                      },
                      onRatingUpdate: (rating) {}),
                ),
                //
              ],
            ),
            Row(
              children: [
                Text(
                  model.price,
                  style: TextStyle(fontSize: 9, color: MyColors.mypinck),
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mywhite,
        elevation: 0,
        centerTitle: true,
        title: defaultBoldText('Givenchy', 22),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Shmagh()));
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
                    return defaultstackgridview(context, Givenchypage[index]);
                  },
                  itemCount: Givenchypage.length,
                ))
          ],
        )),
      ),
    );
  }
}
