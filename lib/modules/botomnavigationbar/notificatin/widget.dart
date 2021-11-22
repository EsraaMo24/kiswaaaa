import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiswaa/shared/colors.dart';

Widget defaultnotifications(context) {
  return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: MyColors.mypinck,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.8b04153f1e791987ccae27daad633656?rik=3pPYkaGq6T1F%2fA&pid=ImgRaw&r=0'),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 220,
                      child: RichText(
                        text: TextSpan(
                          text: 'You Recved A ',
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: ' New Collection',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' From'),
                            TextSpan(
                                text: ' Zara',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        'Today At 4:50 PM',
                        style: TextStyle(color: MyColors.whitegray),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Icon(Icons.more_horiz),
                )
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 15,
            );
          },
          itemCount: 20));
}
