import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/layout/home/home.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/modules/botomnavigationbar/cart/cart.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelbottom.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelbutton.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelcircular.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelcirculargypsour.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelfilling.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelgypsor.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelgysperpoket.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelhighabaya.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelplain.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelpocketpen.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelsideplain1.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelsidepocket.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelsitches.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/selectmodelsleevs.dart';
import 'package:kiswaa/modules/tailoring/selectedmodel/seletmodelphonepocket.dart';
import 'package:kiswaa/shared/colors.dart';

List<Neck> Neckpage = [
  Neck(
    image:
        'https://image.freepik.com/free-photo/closeup-necktie_53876-32078.jpg',
    title: 'plain',
    price: '0000\$',
    screen: SelectModelPlain(),
  ),
  Neck(
    image:
        'https://image.freepik.com/free-photo/closeup-necktie_53876-14822.jpg',
    title: 'Flashk',
    price: '0000\$',
    screen: SelectModelPlain(),
  ),
];
Widget defaultNeck(context, Neck model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<Plain> Plainpage = [
  Plain(
    image:
        'https://image.freepik.com/free-photo/white-polo-shirt-street-style-menswear-fashion-apparel-shoot_53876-105528.jpg',
    title: 'plain',
    price: '0000\$',
    screen: SelectModelCircular(),
  ),
  Plain(
    image:
        'https://image.freepik.com/free-psd/simple-white-hoodie-mockup-psd-comfortably-sporty-menswear_53876-98582.jpg',
    title: 'circular',
    price: '0000\$',
    screen: SelectModelCircular(),
  ),
  Plain(
    image:
        'https://image.freepik.com/free-photo/man-white-shirt-jeans-casual-wear-fashion-full-body_53876-111175.jpg',
    title: 'tray',
    price: '0000\$',
    screen: SelectModelCircular(),
  ),
  Plain(
    image:
        'https://image.freepik.com/free-photo/menswear-polo-shirt-white-casual-apparel-outdoor-shoot_53876-125339.jpg',
    title: 'circular tray',
    price: '0000\$',
    screen: SelectModelCircular(),
  ),
];
Widget defaultPlain(context, Plain model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<Circular> Circularpage = [
  Circular(
    image:
        'https://image.freepik.com/free-photo/young-arab-man-wearing-typical-arab-clothes-isolated-white-background-person-pointing-by-hand-shirt-copy-space-proud-confident_1187-148551.jpg',
    title: 'plain4.5 cm',
    price: '0000\$',
    screen: SelectModelButton(),
  ),
  Circular(
    image:
        'https://image.freepik.com/free-photo/young-arab-man-wearing-typical-arab-clothes-isolated-white-background-happy-smiling-cheerful_1187-135561.jpg',
    title: 'circular4.5 cm',
    price: ' 0000\$',
    screen: SelectModelButton(),
  ),
  Circular(
    image:
        'https://image.freepik.com/free-photo/young-arab-man-wearing-typical-arab-clothes-isolated-white-background-relaxes-after-hard-working-day-she-is-performing-yoga_1187-148556.jpg',
    title: 'tray 4.5 cm',
    price: '0000\$ ',
    screen: SelectModelButton(),
  ),
  Circular(
    image:
        'https://image.freepik.com/free-photo/young-arab-man-wearing-typical-arab-clothes-isolated-white-background-with-thumbs-ups-cheers-about-something-support-respect-concept_1187-148570.jpg',
    title: 'circular tray 4.5 cm',
    price: '0000\$',
    screen: SelectModelButton(),
  ),
];
Widget defaultCircular(context, Circular model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<Button> Buttonpage = [
  Button(
    image:
        'https://image.freepik.com/free-photo/young-arab-man-wearing-typical-arab-clothes-isolated-white-background-person-pointing-by-hand-shirt-copy-space-proud-confident_1187-148551.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectodelGyspor(),
  ),
  Button(
    image:
        'https://image.freepik.com/free-photo/young-arab-man-wearing-typical-arab-clothes-isolated-white-background-happy-smiling-cheerful_1187-135561.jpg',
    title: 'one button',
    price: ' 0000\$',
    screen: SelectodelGyspor(),
  ),
  Button(
    image:
        'https://image.freepik.com/free-photo/young-arab-man-wearing-typical-arab-clothes-isolated-white-background-relaxes-after-hard-working-day-she-is-performing-yoga_1187-148556.jpg',
    title: 'one button',
    price: '0000\$ ',
    screen: SelectodelGyspor(),
  ),
  Button(
    image:
        'https://image.freepik.com/free-photo/young-arab-man-wearing-typical-arab-clothes-isolated-white-background-with-thumbs-ups-cheers-about-something-support-respect-concept_1187-148570.jpg',
    title: 'without',
    price: '0000\$',
    screen: SelectodelGyspor(),
  ),
];
Widget defaultButton1(context, Button model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<Gypsour> Gypsourpage = [
  Gypsour(
    image:
        'https://image.freepik.com/free-vector/white-realistic-square-empty-picture-frame-transparent-background_108964-231.jpg',
    title: 'Square',
    price: '0000\$',
    screen: SelectModelCircularGypsour(),
  ),
  Gypsour(
    image:
        'https://th.bing.com/th/id/R.d807697032cbe5d9d01ca33d1e2df11b?rik=LWBS%2bDnTW730iQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f--wUUSVJWHks%2fTZmW_8oKzgI%2fAAAAAAAABZg%2fY8HZk2LN26o%2fs1600%2fSquare.bmp&ehk=dXRnzWVgxsfbL4kSWXmzokiO3RUN4AMBQduPG4NeJ5w%3d&risl=&pid=ImgRaw&r=0',
    title: 'Square',
    price: ' 0000\$',
    screen: SelectModelCircularGypsour(),
  ),
  Gypsour(
    image:
        'https://th.bing.com/th/id/R.22f07ee9f1b3fec6f7ccc414d933af62?rik=irDRw3NdBjNt1w&riu=http%3a%2f%2fclipart-library.com%2fimages%2f6iyXR8KAT.jpg&ehk=BTkiRCef%2bUEVRkhMxayZanhv9haN7oA2qw8isUGgvtM%3d&risl=&pid=ImgRaw&r=0',
    title: 'Circular',
    price: '0000\$ ',
    screen: SelectModelCircularGypsour(),
  ),
  Gypsour(
    image:
        'https://th.bing.com/th/id/R.0df798c1e668c9e268bf07296b425f09?rik=n3yIcssQgf%2b4jA&riu=http%3a%2f%2fres.egtry.com%2fpostscript%2fshape%2fsquare%2fc%3a%2fcapture%2fbox.png&ehk=VWsTUDVrFE6buNx40N%2fSVv%2b8cMtY5xC9PPMEWvbs4zU%3d&risl=&pid=ImgRaw&r=0',
    title: 'Square',
    price: '0000\$',
    screen: SelectModelCircularGypsour(),
  ),
];
Widget defaultGypsour(context, Gypsour model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<CircularGypsour> CircularGypsourpage = [
  CircularGypsour(
    image:
        'https://image.freepik.com/free-psd/pink-front-sweater-mockup_125540-577.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectModelPocketPen(),
  ),
  CircularGypsour(
    image:
        "https://image.freepik.com/free-psd/black-back-sweater-mockup_125540-569.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectModelPocketPen(),
  ),
  CircularGypsour(
    image:
        "https://image.freepik.com/free-psd/white-front-sweater-mockup_125540-581.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelPocketPen(),
  ),
  CircularGypsour(
    image:
        "https://image.freepik.com/free-psd/white-back-sweater-mockup_125540-580.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelPocketPen(),
  ),
];
Widget defaultCircularGypsour(context, CircularGypsour model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<PocketPen> PocketPenpage = [
  PocketPen(
    image:
        'https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2180.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectModelSleevs(),
  ),
  PocketPen(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectModelSleevs(),
  ),
  PocketPen(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelSleevs(),
  ),
  PocketPen(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelSleevs(),
  ),
  PocketPen(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelSleevs(),
  ),
  PocketPen(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelSleevs(),
  ),
];
Widget defaultPocketPen(context, PocketPen model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<Sleeves> Sleevespage = [
  Sleeves(
    image:
        'https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2180.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectModelPlain1(),
  ),
  Sleeves(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectModelPlain1(),
  ),
  Sleeves(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelPlain1(),
  ),
  Sleeves(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelPlain1(),
  ),
];
Widget defaultSleeves(context, Sleeves model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<plain2> plain2page = [
  plain2(
    image:
        'https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2180.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectMoselSidePocket(),
  ),
  plain2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectMoselSidePocket(),
  ),
  plain2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectMoselSidePocket(),
  ),
  plain2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectMoselSidePocket(),
  ),
  plain2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectMoselSidePocket(),
  ),
  plain2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectMoselSidePocket(),
  ),
];
Widget defaultplain2(context, plain2 model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<sidePocket> sidePocketpage = [
  sidePocket(
    image:
        'https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2180.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectModelGypsourPocket(),
  ),
  sidePocket(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectModelGypsourPocket(),
  ),
  sidePocket(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelGypsourPocket(),
  ),
];
Widget defaultsidePocket(context, sidePocket model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<GypsourPocket2> GypsourPocket2page = [
  GypsourPocket2(
    image:
        'https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2180.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectModelPhonePocket(),
  ),
  GypsourPocket2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectModelPhonePocket(),
  ),
  GypsourPocket2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelPhonePocket(),
  ),
  GypsourPocket2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelPhonePocket(),
  ),
  GypsourPocket2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelPhonePocket(),
  ),
  GypsourPocket2(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelPhonePocket(),
  ),
];
Widget defaultGypsourPocket2(context, GypsourPocket2 model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<phonePocket> phonePocketpage = [
  phonePocket(
    image:
        'https://image.freepik.com/free-vector/white-realistic-square-empty-picture-frame-transparent-background_108964-231.jpg',
    title: 'Square',
    price: '0000\$',
    screen: SelectModelBottom(),
  ),
  phonePocket(
    image:
        'https://th.bing.com/th/id/R.d807697032cbe5d9d01ca33d1e2df11b?rik=LWBS%2bDnTW730iQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f--wUUSVJWHks%2fTZmW_8oKzgI%2fAAAAAAAABZg%2fY8HZk2LN26o%2fs1600%2fSquare.bmp&ehk=dXRnzWVgxsfbL4kSWXmzokiO3RUN4AMBQduPG4NeJ5w%3d&risl=&pid=ImgRaw&r=0',
    title: 'Square',
    price: ' 0000\$',
    screen: SelectModelBottom(),
  ),
  phonePocket(
    image:
        'https://th.bing.com/th/id/R.22f07ee9f1b3fec6f7ccc414d933af62?rik=irDRw3NdBjNt1w&riu=http%3a%2f%2fclipart-library.com%2fimages%2f6iyXR8KAT.jpg&ehk=BTkiRCef%2bUEVRkhMxayZanhv9haN7oA2qw8isUGgvtM%3d&risl=&pid=ImgRaw&r=0',
    title: 'Circular',
    price: '0000\$ ',
    screen: SelectModelBottom(),
  ),
  phonePocket(
    image:
        'https://th.bing.com/th/id/R.0df798c1e668c9e268bf07296b425f09?rik=n3yIcssQgf%2b4jA&riu=http%3a%2f%2fres.egtry.com%2fpostscript%2fshape%2fsquare%2fc%3a%2fcapture%2fbox.png&ehk=VWsTUDVrFE6buNx40N%2fSVv%2b8cMtY5xC9PPMEWvbs4zU%3d&risl=&pid=ImgRaw&r=0',
    title: 'Square',
    price: '0000\$',
    screen: SelectModelBottom(),
  ),
];
Widget defaultphonePocket(context, phonePocket model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

////
List<bottomabaya> bottomabayapage = [
  bottomabaya(
    image:
        'https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2180.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectModelHigh(),
  ),
  bottomabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectModelHigh(),
  ),
  bottomabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelHigh(),
  ),
  bottomabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelHigh(),
  ),
  bottomabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelHigh(),
  ),
  bottomabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelHigh(),
  ),
];
Widget defaultbottomabaya(context, bottomabaya model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<hightabaya> hightabayapage = [
  hightabaya(
    image:
        'https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2180.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectModelFilling(),
  ),
  hightabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectModelFilling(),
  ),
  hightabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelFilling(),
  ),
  hightabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelFilling(),
  ),
];
Widget defaulthightabaya(context, hightabaya model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<fillingabaya> fillingabayapage = [
  fillingabaya(
    image:
        'https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2180.jpg',
    title: 'one button',
    price: '0000\$',
    screen: SelectModelStitches(),
  ),
  fillingabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: SelectModelStitches(),
  ),
  fillingabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelStitches(),
  ),
  fillingabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelStitches(),
  ),
  fillingabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: SelectModelStitches(),
  ),
  fillingabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: SelectModelStitches(),
  ),
];
Widget defaultfillingabaya(context, fillingabaya model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

List<stitchesabaya> stitchesabayapage = [
  stitchesabaya(
    image:
        'https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2180.jpg',
    title: 'one button',
    price: '0000\$',
    screen: Cart(),
  ),
  stitchesabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2174.jpg",
    title: 'two button',
    price: ' 0000\$',
    screen: Cart(),
  ),
  stitchesabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2183.jpg",
    title: 'two buttons',
    price: '0000\$ ',
    screen: Cart(),
  ),
  stitchesabaya(
    image:
        "https://image.freepik.com/free-vector/autumn-coat-hand-drawn-vector-illustration-raincoat-sketch-design-element-isolated-white-background-fashion-fall-season-clothing-outerwear-parka-coat-ink-pen-freehand-drawing_231873-2182.jpg",
    title: 'one buttons',
    price: '0000\$',
    screen: Cart(),
  ),
];
Widget defaultstitchesabaya(context, stitchesabaya model) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(model.image),
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
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: MyColors.myblack),
                ),
              ),
              Text(
                model.price,
                style: TextStyle(fontSize: 9, color: MyColors.mypinck),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
