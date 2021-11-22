import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/shared/colors.dart';

Widget defaultRow(
  String text,
  IconData preffix,
  Color background,
) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Icon(
            preffix,
            size: 20,
            color: background,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, color: background, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
Widget defaltprofileImage() {
  return CircleAvatar(
    radius: 50,
    backgroundImage: NetworkImage(
        'https://image.shutterstock.com/image-photo/fashionable-clothes-boutique-store-london-600w-589577570.jpg'),
  );
}

Widget defaultTextFormField2({
  required String label,
  required IconData suffix,
  required TextEditingController emailcontroller,
  required TextInputType emailAddress,
  bool isPassword = true,
  Function? suffixpressed,
}) {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    controller: emailcontroller,
    obscureText: isPassword,
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      hintText: label,
      labelStyle: TextStyle(color: MyColors.whitegray2, fontSize: 16),
      suffixIcon: suffix != null
          ? IconButton(
              onPressed: () {
                suffixpressed;
              },
              icon: Icon(
                suffix,
                color: MyColors.mygray1,
              ),
            )
          : null,
    ),
  );
}

List<Offerpage> pageoffer = [
  Offerpage(
    image:
        'https://image.freepik.com/free-photo/woman-model-demonstrating-winter-cloths_1303-16950.jpg',
    title: 'cout',
    price: '350',
    descount: '50%',
  ),
  Offerpage(
    image:
        'https://image.freepik.com/free-psd/front-view-stylish-woman-hoodie-with-headphones_23-2148939625.jpg',
    title: 'T_shirt',
    price: '550',
    descount: '50%',
  ),
  Offerpage(
    image:
        'https://image.freepik.com/free-photo/two-young-pretty-girls-looking-dresses-try-it-while-choosing-shop_155003-14848.jpg',
    title: 'Blouse',
    price: '650',
    descount: '40%',
  ),
  Offerpage(
    image:
        'https://image.freepik.com/free-photo/woman-model-demonstrating-winter-cloths_1303-16950.jpg',
    title: 'cout',
    price: '350',
    descount: '30%',
  ),
  Offerpage(
    image:
        'https://image.freepik.com/free-psd/front-view-stylish-woman-hoodie-with-headphones_23-2148939625.jpg',
    title: 'T_shirt',
    price: '550',
    descount: '20%',
  ),
  Offerpage(
    image:
        'https://image.freepik.com/free-photo/two-young-pretty-girls-looking-dresses-try-it-while-choosing-shop_155003-14848.jpg',
    title: 'Blouse',
    price: '650',
    descount: '30%',
  ),
];
List<favoritepage> pagefavorite = [
  favoritepage(
      image:
          'https://image.freepik.com/free-photo/woman-model-demonstrating-winter-cloths_1303-16950.jpg',
      title: 'cout',
      price: '350'),
  favoritepage(
      image:
          'https://image.freepik.com/free-psd/front-view-stylish-woman-hoodie-with-headphones_23-2148939625.jpg',
      title: 'T_shirt',
      price: '350'),
  favoritepage(
      image:
          'https://image.freepik.com/free-photo/two-young-pretty-girls-looking-dresses-try-it-while-choosing-shop_155003-14848.jpg',
      title: 'Blouse',
      price: '350'),
  favoritepage(
      image:
          'https://image.freepik.com/free-photo/woman-model-demonstrating-winter-cloths_1303-16950.jpg',
      title: 'cout',
      price: '350'),
  favoritepage(
      image:
          'https://image.freepik.com/free-psd/front-view-stylish-woman-hoodie-with-headphones_23-2148939625.jpg',
      title: 'T_shirt',
      price: '350'),
  favoritepage(
      image:
          'https://image.freepik.com/free-photo/two-young-pretty-girls-looking-dresses-try-it-while-choosing-shop_155003-14848.jpg',
      title: 'Blouse',
      price: '350'),
];
