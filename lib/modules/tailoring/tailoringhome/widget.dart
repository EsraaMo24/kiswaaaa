import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelneck.dart';
import 'package:kiswaa/modules/tailoring/tailoringhome/tailoringdatails.dart';
import 'package:kiswaa/modules/tailoring/tailoringhome/tailoringfavorites.dart';
import 'package:kiswaa/shared/colors.dart';

List<Tailoringfaviorites> Tailoringfavioritespage = [
  Tailoringfaviorites(
    image:
        'https://image.freepik.com/free-photo/portrait-elegant-brutal-man-wool-suit_149155-1582.jpg',
    title: 'Zakhrafa',
    screen: TailoringDetails(),
    price: 'start from: 300\$',
  ),
  Tailoringfaviorites(
    image:
        'https://image.freepik.com/free-photo/rehearsal-preparation-groom-s-watch-hand_8353-5810.jpg',
    title: 'Zakhrafa',
    screen: TailoringDetails(),
    price: 'start from: 300\$',
  ),
  Tailoringfaviorites(
    image:
        'https://image.freepik.com/free-photo/portrait-elegant-brutal-man-wool-suit_149155-478.jpg',
    title: 'Zakhrafa',
    screen: TailoringDetails(),
    price: 'start from: 300\$',
  ),
  Tailoringfaviorites(
    image:
        'https://image.freepik.com/free-photo/stylish-man-hat-sunglasses_136403-4135.jpg',
    title: 'Zakhrafa',
    screen: TailoringDetails(),
    price: 'start from: 300\$',
  ),
  Tailoringfaviorites(
    image:
        'https://image.freepik.com/free-photo/full-length-portrait-smiling-handsome-man_171337-4855.jpg',
    title: 'Zakhrafa',
    price: 'start from: 300\$',
    screen: TailoringDetails(),
  ),
  Tailoringfaviorites(
    image:
        'https://image.freepik.com/free-photo/portrait-handsome-fashion-stylish-hipster-businessman-model-dressed-elegant-brown-suit-glasses-near-dark-wall_158538-11222.jpg',
    title: 'Zakhrafa',
    screen: TailoringDetails(),
    price: 'start from: 300\$',
  ),
];
Widget defaultTailoringfaviorites(context, Tailoringfaviorites model) {
  return InkWell(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            height: 180,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
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
        ]),
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

Widget defaultTaioringDetailsiImage(context) {
  return Stack(
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .5,
        child: Image(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://image.freepik.com/free-photo/man-sitting-cobblestone-road_23-2147657088.jpg',
          ),
        ),
      ),
      Positioned(
        bottom: 30,
        right: 15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: MyColors.mywhite,
              radius: 12,
              child: FavoriteButton(
                iconSize: 18,
                isFavorite: true,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
            ),
            SizedBox(
              height: 5,
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
          ],
        ),
      ),
      Positioned(
        bottom: 30,
        left: 15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultBoldText('Zakhrafa', 20),
            const SizedBox(
              height: 5,
            ),
            defaultNormalText('The best in tailoring', 18, MyColors.myblack)
          ],
        ),
      ),
      Positioned(
        top: 30,
        left: 15,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Tailoringfavorites(),
              ),
            );
          },
          child: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
    ],
  );
}

List<MenThobe> MenThobepage = [
  MenThobe(
    image:
        'https://image.freepik.com/free-photo/man-sitting-cobblestone-road_23-2147657088.jpg',
    title: "Classic Thobe",
    price: '300\$',
    screen: SelectModelNeck(),
  ),
  MenThobe(
    image:
        'https://image.freepik.com/free-photo/portrait-bearded-young-man-with-brown-eyes-casual-clothes-white-t-shirt-is-looking-aside-up-emotion-happy-glad-smiling-aside_295783-14992.jpg',
    title: "Classic Thobe",
    price: '500\$',
    screen: SelectModelNeck(),
  ),
  MenThobe(
    image:
        'https://image.freepik.com/free-photo/picture-elegant-young-fashion-man_158595-527.jpg',
    title: "Classic Thobe",
    price: '300\$',
    screen: SelectModelNeck(),
  ),
  MenThobe(
    image:
        'https://image.freepik.com/free-photo/stylish-man-hat-sunglasses_136403-4135.jpg',
    title: "Classic Thobe",
    price: '300\$',
    screen: SelectModelNeck(),
  ),
  MenThobe(
    image:
        'https://image.freepik.com/free-photo/full-length-portrait-handsome-serious-man_171337-17388.jpg',
    title: "Classic Thobe",
    price: '300\$',
    screen: SelectModelNeck(),
  ),
  MenThobe(
    image:
        'https://image.freepik.com/free-photo/athletic-young-hispanic-male-model-wearing-black-leather-jacket-posing-against-gray-wall_181624-45702.jpg',
    title: "Classic Thobe",
    price: '300\$',
    screen: SelectModelNeck(),
  ),
];
Widget defaultMenThobe(context, MenThobe model) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => model.screen,
        ),
      );
    },
    child: Column(
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
                  RatingBar.builder(
                      itemSize: 10,
                      minRating: 1,
                      itemBuilder: (BuildContext context, _) {
                        return Icon(
                          Icons.star,
                          color: Colors.yellow,
                        );
                      },
                      onRatingUpdate: (rating) {}),
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
    ),
  );
}
