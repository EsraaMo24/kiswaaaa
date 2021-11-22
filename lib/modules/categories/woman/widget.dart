import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/shared/colors.dart';

List<categorywoman> categorywomanpage = [
  categorywoman(
    image:
        'https://image.freepik.com/free-photo/fashion-portrait-young-elegant-woman_1328-2691.jpg',
    title: 'Dress',
  ),
  categorywoman(
    image:
        'https://img.freepik.com/free-photo/green-front-sweater_125540-736.jpg?size=338&ext=jpg',
    title: 'Blouse',
  ),
  categorywoman(
    image:
        'https://img.freepik.com/free-photo/stack-men-shirt_1203-2615.jpg?size=338&ext=jpg',
    title: 'T_shirt',
  ),
];
Widget defaultStackCategoriesWoman(context, categorywoman model) {
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
