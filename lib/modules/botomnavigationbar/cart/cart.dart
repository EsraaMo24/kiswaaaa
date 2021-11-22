import 'package:flutter/material.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/modules/botomnavigationbar/cart/widget.dart';
import 'package:kiswaa/modules/categories/givenchy/widget.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

import 'checkout.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Widget _popupdelete(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PopupMenuItem(
            child: defaultBoldText('Delete product', 19),
          ),
          PopupMenuItem(
            child: defaultNormalText(
              'Are You Sure You Want To Delete This Product',
              15,
              MyColors.mygray1,
            ),
          ),
          PopupMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColors.red100,
                  ),
                  width: 90,
                  height: 35,
                  child: Center(
                    child: Text(
                      "delete",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColors.pinck10,
                  ),
                  width: 90,
                  height: 35,
                  child: Center(
                    child: Text(
                      "cancel",
                      style: TextStyle(
                        color: MyColors.mypinckaccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  int _itemCount = 0;
  List<CartController> CartControllerpage = [
    CartController(
      image:
          'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-jeans-clothes-fashion-man_158538-5024.jpg',
      title: 'Cout',
      price: '20\$',
    ),
    CartController(
      image:
          'https://image.freepik.com/free-photo/portrait-elegant-brutal-man-wool-suit_149155-478.jpg',
      title: 't_shirt',
      price: '20\$',
    ),
    CartController(
      image:
          'https://image.freepik.com/free-photo/stylish-man-hat-sunglasses_136403-4135.jpg',
      title: 'Cout',
      price: '20\$',
    ),
    CartController(
      image:
          'https://image.freepik.com/free-photo/portrait-handsome-fashion-stylish-hipster-businessman-model-dressed-elegant-brown-suit-glasses-near-dark-wall_158538-11222.jpg',
      title: 'bantalon',
      price: '20\$',
    ),
    CartController(
      image:
          'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-jeans-clothes-fashion-man_158538-5024.jpg',
      title: 'Cout',
      price: '20\$',
    )
  ];

  Widget defaultcart(BuildContext context, CartController model) {
    var counter;
    return Container(
        height: 140,
        padding: const EdgeInsets.all(8.0),
        width: 100,
        margin: EdgeInsets.all(4.0),
        child: Container(
          width: 330,
          height: 120,
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(model.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        defaultBoldText(model.title, 19),
                        SizedBox(
                          height: 5,
                        ),
                        defaultBoldsalarytext(
                            model.price, 19, MyColors.mypinck),
                        Row(
                          children: [
                            _itemCount != 0
                                ? IconButton(
                                    icon: new Icon(Icons.remove),
                                    onPressed: () => {
                                          setState(
                                            () => _itemCount--,
                                          ),
                                        })
                                : Container(),
                            Text(_itemCount.toString()),
                            IconButton(
                                icon: new Icon(
                                  Icons.add,
                                ),
                                onPressed: () => {
                                      setState(
                                        () => _itemCount++,
                                      ),
                                    })
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 30),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _popupdelete(context),
                    );
                  },
                  child: Icon(
                    Icons.delete,
                    color: MyColors.red,
                  ),
                ),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.mywhite,
          elevation: 0,
          centerTitle: true,
          title: defaultBoldText('Cart', 22),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(8),
                    itemBuilder: (context, index) => Card(
                      elevation: 0,
                      child: defaultcart(
                        context,
                        CartControllerpage[index],
                      ),
                    ),
                    itemCount: CartControllerpage.length,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    width: 260,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: MyColors.whitegray, spreadRadius: 2),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defaultNormalText(
                                  'Sub Total', 19, MyColors.myblack),
                              defaultsalarytext('60\$', 18, MyColors.myblack),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defaultNormalText(
                                  'Shipping', 19, MyColors.myblack),
                              defaultsalarytext('15\$', 18, MyColors.myblack),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defaultBoldText('Big Total', 19),
                              defaultBoldsalarytext(
                                  '75\$', 18, MyColors.mypinck),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => checkout()));
                      },
                      child: defaultButton('Continue')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
