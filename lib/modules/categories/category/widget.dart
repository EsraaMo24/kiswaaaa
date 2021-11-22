import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/modules/categories/alrajulalmotmiz/alrajulalmotmiz.dart';

List<categories> categoriespage = [
  categories(
    image:
        'https://image.freepik.com/free-photo/full-length-portrait-smiling-handsome-man_171337-4855.jpg',
    title: 'Alrajul Almotmiz',
    screen: AlrajulAlmotmiz(),
  ),
  categories(
    image:
        'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-wearing-jeans-clothes-sunglasses-fashion-man_158538-5015.jpg',
    title: 'Alshaoukh',
    screen: AlrajulAlmotmiz(),
  ),
  categories(
    image:
        'https://image.freepik.com/free-photo/portrait-handsome-fashion-stylish-hipster-businessman-model-dressed-elegant-brown-suit-glasses-near-dark-wall_158538-11222.jpg',
    title: 'Alrajul Almotmiz',
    screen: AlrajulAlmotmiz(),
  ),
  categories(
    image:
        'https://image.freepik.com/free-photo/white-polo-shirt-street-style-menswear-fashion-apparel-shoot_53876-105528.jpg',
    title: 'Alshaoukh',
    screen: AlrajulAlmotmiz(),
  ),
  categories(
    image:
        'https://image.freepik.com/free-photo/portrait-elegant-brutal-man-wool-suit_149155-478.jpg',
    title: 'Alrajul Almotmiz',
    screen: AlrajulAlmotmiz(),
  ),
  categories(
    image:
        'https://image.freepik.com/free-photo/stylish-man-hat-sunglasses_136403-4135.jpg',
    title: 'Alshaoukh',
    screen: AlrajulAlmotmiz(),
  ),
];
Widget defaultategoriesgridview(context, categories model) {
  return InkWell(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Container(
            height: 180,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(model.image),
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
          width: 150,
          height: 50,
          child: Center(
            child: Column(
              children: [
                Text(
                  model.title,
                  style: TextStyle(fontSize: 14),
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
