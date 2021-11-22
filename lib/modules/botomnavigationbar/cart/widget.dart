import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int _itemCount = 0;

Widget defaultsalarytext(
  String text,
  double size,
  Color background,
) {
  return Text(
    text,
    style: TextStyle(color: background, fontSize: size),
  );
}
