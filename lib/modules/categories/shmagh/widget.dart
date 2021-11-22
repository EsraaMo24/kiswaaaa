import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/modules/categories/givenchy/givenchy.dart';

List<shmagh> shmaghpage = [
  shmagh(
    image:
        'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-jeans-clothes-fashion-man_158538-5024.jpg',
    title: 'Givenchy',
    screen: Givenchy(),
  ),
  shmagh(
    image:
        'https://image.freepik.com/free-photo/portrait-elegant-brutal-man-wool-suit_149155-1582.jpg',
    title: 'Bently',
    screen: Givenchy(),
  ),
  shmagh(
    image:
        'https://image.freepik.com/free-photo/portrait-elegant-brutal-man-wool-suit_149155-478.jpg',
    title: 'Bently',
    screen: Givenchy(),
  ),
  shmagh(
    image:
        'https://image.freepik.com/free-photo/stylish-man-hat-sunglasses_136403-4135.jpg',
    title: 'Albassam',
    screen: Givenchy(),
  ),
  shmagh(
    image:
        'https://image.freepik.com/free-photo/portrait-handsome-fashion-stylish-hipster-businessman-model-dressed-elegant-brown-suit-glasses-near-dark-wall_158538-11222.jpg',
    title: 'Bently',
    screen: Givenchy(),
  ),
  shmagh(
    image:
        'https://image.freepik.com/free-photo/portrait-elegant-brutal-man-wool-suit_149155-1582.jpg',
    title: 'Givenchy',
    screen: Givenchy(),
  ),
];
Widget defaultShmaghgridview(context, shmagh model) {
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
