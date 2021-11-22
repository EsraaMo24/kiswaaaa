import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/modules/categories/men/menclothes.dart';
import 'package:kiswaa/modules/categories/woman/womanclothes.dart';
import 'package:kiswaa/modules/tailoring/tailoringmen.dart';
import 'package:kiswaa/modules/tailoring/tailoringwoman.dart';
import 'package:kiswaa/shared/colors.dart';

List<MenWomanModel> MenWomanpage = [
  MenWomanModel(
    image:
        'https://image.freepik.com/free-photo/young-handsome-man-choosing-clothes-shop_1303-19720.jpg',
    title: 'Men',
    screen: MenClothes(),
  ),
  MenWomanModel(
    image:
        'https://image.freepik.com/free-photo/woman-black-trousers-purple-blouse-laughs-leaning-stand-with-elegant-clothes-pink-background_197531-17614.jpg',
    title: 'Woman',
    screen: WomanClothes(),
  ),
];
Widget defaultMenWomanCategories(context, MenWomanModel model) {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      width: 180,
      height: 90,
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(model.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 180,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black26,
            ),
          ),
          Container(
            width: 180,
            height: 90,
            alignment: AlignmentDirectional.center,
            child: Text(
              model.title,
              style: TextStyle(fontSize: 20, color: MyColors.mywhite),
            ),
          ),
        ],
      ),
    ),
    onTap: () {
      Navigator.push(
        context,
        new MaterialPageRoute<Widget>(
          builder: (BuildContext context) {
            return model.screen;
          },
        ),
      );
    },
  );
}

List<ReadyModel> Readygpage = [
  ReadyModel(
    image:
        'https://img.freepik.com/free-psd/woman-holding-leafy-white-pillow-mockup_53876-115776.jpg?size=338&ext=jpg',
    title: 'Ready',
  ),
];
List<TailoringModel> Tailoringpage = [
  TailoringModel(
    image:
        'https://image.freepik.com/free-photo/pink-sweater-front_125540-746.jpg',
    title: 'Tailoring',
  ),
];
Widget _buildPopupDialogready(BuildContext context) {
  return AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PopupMenuItem(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                groupValue: 1,
                onChanged: (i) {},
                value: 1,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenClothes()));
                  },
                  child: Text("Men")),
            ],
          ),
        ),
        PopupMenuItem(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Radio(
                groupValue: 1,
                onChanged: (i) {},
                value: 1,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WomanClothes()));
                  },
                  child: Text("Woman")),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildPopupDialogTailoring(BuildContext context) {
  return AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PopupMenuItem(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                groupValue: 1,
                onChanged: (i) {},
                value: 1,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TailoringMen()));
                  },
                  child: Text("Men")),
            ],
          ),
        ),
        PopupMenuItem(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Radio(
                groupValue: 1,
                onChanged: (i) {},
                value: 1,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TailoringWoman()));
                  },
                  child: Text("Woman")),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget defaultReadyCategories(context) {
  return InkWell(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) => _buildPopupDialogready(context),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      width: 160,
      height: 90,
      child: Stack(
        children: [
          Container(
            width: 160,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/free-psd/woman-holding-leafy-white-pillow-mockup_53876-115776.jpg?size=338&ext=jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 180,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black26,
            ),
          ),
          Container(
            width: 160,
            height: 90,
            alignment: AlignmentDirectional.center,
            child: Text(
              'Ready',
              style: TextStyle(fontSize: 20, color: MyColors.mywhite),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget defaultTailoringCategories(context) {
  return InkWell(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) => _buildPopupDialogTailoring(context),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      width: 160,
      height: 90,
      child: Stack(
        children: [
          Container(
            width: 160,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                    'https://image.freepik.com/free-photo/pink-sweater-front_125540-746.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 160,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black26,
            ),
          ),
          Container(
            width: 180,
            height: 90,
            alignment: AlignmentDirectional.center,
            child: Text(
              'Tailoring',
              style: TextStyle(fontSize: 20, color: MyColors.mywhite),
            ),
          ),
        ],
      ),
    ),
  );
}

List<YouMayLike> YouMayLikepage = [
  YouMayLike(
    image:
        'https://image.freepik.com/free-photo/fashion-portrait-young-elegant-woman_1328-2691.jpg',
    title: 'Dress',
    price: '150LE',
  ),
  YouMayLike(
    image:
        'https://img.freepik.com/free-photo/green-front-sweater_125540-736.jpg?size=338&ext=jpg',
    title: 'Blouse',
    price: '200LE',
  ),
  YouMayLike(
    image:
        'https://img.freepik.com/free-photo/stack-men-shirt_1203-2615.jpg?size=338&ext=jpg',
    title: 'T_shirt',
    price: '540LE',
  ),
];

Widget defaultStakYouMayLike(context, YouMayLike model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 180,
        width: 150,
        child: Stack(
          children: [
            Container(
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
    ],
  );
}

List<Offersclass> offerpage = [
  Offersclass(
    image:
        'https://img.freepik.com/free-photo/green-front-sweater_125540-736.jpg?size=338&ext=jpg',
    title: 'Dress',
    price: '150LE',
    descount: '50%',
  ),
  Offersclass(
    image:
        'https://image.freepik.com/free-photo/fashion-portrait-young-elegant-woman_1328-2691.jpg',
    descount: '30%',
    title: 'Blouse',
    price: '200LE',
  ),
  Offersclass(
    descount: '20%',
    image:
        'https://img.freepik.com/free-photo/stack-men-shirt_1203-2615.jpg?size=338&ext=jpg',
    title: 'T_shirt',
    price: '540LE',
  ),
];
Widget defaultstackOfferss(context, Offersclass model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 180,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Stack(
          children: [
            Container(
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
            Positioned(
              top: 20,
              right: 0,
              child: Container(
                width: 45,
                height: 20,
                decoration: BoxDecoration(
                  color: MyColors.mypinck,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                ),
                child: Center(
                  child: Text(
                    model.descount,
                    style: TextStyle(fontSize: 6, color: MyColors.mywhite),
                  ),
                ),
              ),
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
    ],
  );
}
