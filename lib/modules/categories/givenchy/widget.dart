import 'package:flutter/cupertino.dart';
import 'package:kiswaa/models/user.dart';

Widget defaultBoldsalarytext(
  String text,
  double size,
  Color background,
) {
  return Text(
    text,
    style: TextStyle(
        color: background, fontWeight: FontWeight.bold, fontSize: size),
  );
}

List<Givenchyclass> Givenchypage = [
  Givenchyclass(
    image:
        'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-jeans-clothes-fashion-man_158538-5024.jpg',
    title: 'Cout',
    price: '150LE',
  ),
  Givenchyclass(
    image:
        'https://image.freepik.com/free-photo/portrait-elegant-brutal-man-wool-suit_149155-478.jpg',
    title: 't_shirt',
    price: '2000LE',
  ),
  Givenchyclass(
    image:
        'https://image.freepik.com/free-photo/stylish-man-hat-sunglasses_136403-4135.jpg',
    title: 'Cout',
    price: '550LE',
  ),
  Givenchyclass(
    image:
        'https://image.freepik.com/free-photo/portrait-handsome-fashion-stylish-hipster-businessman-model-dressed-elegant-brown-suit-glasses-near-dark-wall_158538-11222.jpg',
    title: 'bantalon',
    price: '150LE',
  ),
  Givenchyclass(
    image:
        'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-jeans-clothes-fashion-man_158538-5024.jpg',
    title: 'Cout',
    price: '150LE',
  ),
];
