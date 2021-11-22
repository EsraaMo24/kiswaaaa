import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/models/user.dart';
import 'package:kiswaa/modules/botomnavigationbar/cart/widget.dart';
import 'package:kiswaa/modules/categories/givenchy/widget.dart';
import 'package:kiswaa/modules/loginscreen/splashscreen.dart';
import 'package:kiswaa/modules/loginscreen/widget.dart';
import 'package:kiswaa/shared/colors.dart';

import 'cart.dart';

class checkout extends StatefulWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  _checkoutState createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
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

  @override
  Widget build(BuildContext context) {
    void _showbtnsheetorder(BuildContext ctx) {
      showModalBottomSheet(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          elevation: 10,
          context: ctx,
          builder: (ctx) => Container(
                decoration: BoxDecoration(
                    color: MyColors.gray30,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: MyColors.gray30,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/orderdone.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      defaultBoldText('Order Accepted', 25),
                      SizedBox(
                        height: 7,
                      ),
                      defaultNormalText(
                          'Lorem Spum This Word', 15, MyColors.mygray1),
                      SizedBox(
                        height: 70,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Splashscreen()));
                          },
                          child: defaultButton('Continue'))
                    ],
                  ),
                ),
              ));
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
                  padding: const EdgeInsets.only(top: 10, right: 30),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _popupdelete(context),
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

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: defaultBoldText('Checkout', 22),
        backgroundColor: MyColors.mywhite,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart()));
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: MyColors.mypinck,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
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
              defaultBoldText('Receipt', 20),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 380,
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
                          defaultNormalText('Sub Total', 19, MyColors.myblack),
                          defaultsalarytext('60\$', 18, MyColors.myblack),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          defaultNormalText('Shipping', 19, MyColors.myblack),
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
                          defaultBoldsalarytext('75\$', 18, MyColors.mypinck),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              defaultBoldText('Complete Order', 20),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 320,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: MyColors.whitegray, spreadRadius: 1),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      defaultNormalText('Ahmed Ali', 16, MyColors.myblack),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 320,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: MyColors.whitegray, spreadRadius: 1),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_history,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          defaultNormalText(
                              'level 4 - City Mall', 16, MyColors.myblack)
                        ],
                      ),
                      Icon(
                        Icons.edit,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              defaultBoldText('Time Of Receipt', 20),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DateTimePicker(
                    type: DateTimePickerType.dateTimeSeparate,
                    dateMask: 'd MMM, yyyy',
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    icon: Icon(Icons.event),
                    dateLabelText: 'Date',
                    timeLabelText: "Hour",
                    selectableDayPredicate: (date) {
                      if (date.weekday == 6 || date.weekday == 7) {
                        return false;
                      }

                      return true;
                    },
                    onChanged: (val) => print(val),
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: InkWell(
                      onTap: () {
                        _showbtnsheetorder(context);
                      },
                      child: defaultButton('Continue')))
            ],
          ),
        ),
      ),
    ));
  }
}
