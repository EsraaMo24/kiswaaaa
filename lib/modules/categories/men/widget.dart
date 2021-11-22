import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/shared/colors.dart';

List<categoryMen> categoryMenpage = [
  categoryMen(
    image:
        'https://image.freepik.com/free-photo/side-view-african-businessman-suit-with-hero-red-cout_264277-1468.jpg',
    title: 'Couts',
  ),
  categoryMen(
    image:
        'https://image.freepik.com/free-photo/rehearsal-preparation-groom-s-watch-hand_8353-5810.jpg',
    title: 'Gulf Abayas',
  ),
  categoryMen(
    image:
        'https://image.freepik.com/free-photo/gray-scale-shot-black-watch_181624-422.jpg',
    title: 'Accessories',
  ),
];
Widget defaultStackCategoriesMen(context, categoryMen model) {
  return Column(
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
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                    color: MyColors.rose,
                    borderRadius: BorderRadius.circular(5)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(onSurface: MyColors.mywhite),
                  onPressed: () {},
                  child: Text(
                    'Shop',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: MyColors.mypinck,
                      fontSize: 9,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
