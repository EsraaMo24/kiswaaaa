import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/modules/botomnavigationbar/profile/profile.dart';
import 'package:kiswaa/modules/botomnavigationbar/profile/widget.dart';
import 'package:kiswaa/modules/categories/givenchy/widget.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
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

  void _showbtnsheetfavorite(BuildContext ctx) {
    showModalBottomSheet(
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

  Widget defaultFavorites(context, favoritepage model) {
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
              onTap: () => _showbtnsheetfavorite(context),
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
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mywhite,
        elevation: 0,
        centerTitle: true,
        title: defaultBoldText('Favorites', 22),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
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
            Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .62,
                  crossAxisSpacing: 20,
                ),
                itemCount: pagefavorite.length,
                itemBuilder: (BuildContext context, int index) {
                  return defaultFavorites(context, pagefavorite[index]);
                },
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
